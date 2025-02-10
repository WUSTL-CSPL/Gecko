#include <iostream>
#include <vector>
#include <string.h>

extern "C" {
void cspl_inter_cpt_transfer();
void cspl_intra_cpt_transfer();
void cspl_unknown_ind_call();
void cspl_bug_crash();
void cspl_intra_ind_call();
void cspl_inter_ind_call();
void cspl_data_inter();
void cspl_data_global();
void cspl_data_other();
void cspl_data_intra();
void cspl_data_log(uint8_t* ptr, int n, int type, int id);
void cspl_data_replay(uint8_t* ptr, int n, int type, int id, int ispointer);
// Checkpointing Beblow
void init_checkpointing_memory();
void checkpoint_variable(uint64_t* ptr, int n, int type, int id);
}

#define ALLOC_UNIT 512 
#define CHECKPOINT_SKIP_factor 10


#ifndef MAX_DATA
#define MAX_DATA 4048
#endif
#ifndef NUM_INST
#define NUM_INST 500
#endif
#ifndef NUM_LOAD
#define NUM_LOAD NUM_INST
#endif
#ifndef NUM_STORE
#define NUM_STORE NUM_INST
#endif
using namespace std;
// #define BUFFSIZE 2048
// uint8_t buffer[2][BUFFSIZE]={0};
// int counter[2]={0};
#ifndef NUM_CFI_TARGETS
#define NUM_CFI_TARGETS 1000
#endif
#define LOG_EVAL


int target_funcs[NUM_CFI_TARGETS];
// std::vector<uint8_t*>* buff[2][NUM_INST]={nullptr};
uint8_t* buff[2][NUM_INST][MAX_DATA / ALLOC_UNIT];  // = {nullptr};
int counters[2][NUM_INST];                          // = {0};
int replay_counters[2][NUM_INST];                   // = {0};
extern int count_cspl_data_replay;
void cspl_data_replay(uint8_t* ptr, int n, int type, int id, int ispointer) {
#ifdef LOG_EVAL
    count_cspl_data_replay++;
#endif
    if (ispointer) {
        //   replay_counters[type][id];
    }
}
extern int count_cspl_data_log;
void cspl_data_log(uint8_t* ptr, int n, int type, int id) {
//  std::cout << " Logging CMPT Data \n";
#ifdef LOG_EVAL
    count_cspl_data_log++;
#endif
    if (buff[type][id][(counters[type][id] % MAX_DATA) / ALLOC_UNIT] ==
        nullptr) {
        // buff[type][id]=new std::vector<uint8_t*>();
        buff[type][id][(counters[type][id] % MAX_DATA) / ALLOC_UNIT] =
            new uint8_t[ALLOC_UNIT];
        // buff[type][id]->push_back(pointer);
    }
    int c = (counters[type][id] % MAX_DATA);
    if (buff[type][id][((c + n) % MAX_DATA) / ALLOC_UNIT] == nullptr) {
        // buff[type][id]=new std::vector<uint8_t*>();
        buff[type][id][((c + n) % MAX_DATA) / ALLOC_UNIT] =
            new uint8_t[ALLOC_UNIT];
        // buff[type][id]->push_back(pointer);
    }
    for (int i = 0; i < n; i++) {
        uint8_t t = *(ptr + i);
        buff[type][id][((c + i) % MAX_DATA) / ALLOC_UNIT]
            [(c + i) % ALLOC_UNIT] = t;
    }
    counters[type][id] += n;
    // counters[type][id]=counters[type][id]%MAX_DATA;
    // std::cout<<"\n”;
    // for(int i=0;i<n;i++){
    //    uint8_t t=*(ptr+i);
    //    buffer[type][counter[type]]=t;
    //    counter[type]++;
    //    counter[type]=counter[type]%BUFFSIZE;
    // std::cout<<"\n";
}
// extern "C"
extern int count_cspl_inter_cpt_transfer;
void cspl_inter_cpt_transfer() {
// printf(" Checking Inter-CMPT \n");
#ifdef LOG_EVAL
    count_cspl_inter_cpt_transfer++;
#endif
    // A dummy function to emulate the overhead of CFI
    int res = 0, i;
    for (i = 0; i < NUM_CFI_TARGETS; i++) {
        res = target_funcs[i];
    }
    return;
}
extern int count_cspl_intra_cpt_transfer;
void cspl_intra_cpt_transfer() {
#ifdef LOG_EVAL
    count_cspl_intra_cpt_transfer++;
#endif
    // printf(" Checking Intra-CMPT \n");
    return;
}
extern int count_cspl_unknown_ind_call;
void cspl_unknown_ind_call() {
#ifdef LOG_EVAL
    count_cspl_unknown_ind_call++;
#endif
    // printf(" Unknown Call \n");
    return;
}
extern int count_cspl_bug_crash;
void cspl_bug_crash() {
#ifdef LOG_EVAL
    count_cspl_bug_crash++;
#endif
    void (*functionPtr)();
    functionPtr = (void (*)())0x1234;
    functionPtr();
}
extern int count_cspl_intra_ind_call;
void cspl_intra_ind_call() {
#ifdef LOG_EVAL
    count_cspl_intra_ind_call++;
#endif
}
extern int count_cspl_inter_ind_call;
void cspl_inter_ind_call() {
#ifdef LOG_EVAL
    count_cspl_inter_ind_call++;
#endif
}
extern int count_cspl_data_inter;
void cspl_data_inter() {
#ifdef LOG_EVAL
    count_cspl_data_inter++;
#endif
}
extern int count_cspl_data_global;
void cspl_data_global() {
#ifdef LOG_EVAL
    count_cspl_data_global++;
#endif
}
extern int count_cspl_data_other;
void cspl_data_other() {
#ifdef LOG_EVAL
    count_cspl_data_other++;
#endif
}
extern int count_cspl_data_intra;
void cspl_data_intra() {
#ifdef LOG_EVAL
    count_cspl_data_intra++;
#endif
}

/////////////////////////////////////////////////////

extern int number_var_checkpoint;
extern int need_checkpoint;
// extern int variable_size_array[number_var_checkpoint];
extern int checkpoint_variables_size_array[];

long* checkpoint_variable_addr;
int* checkpoint_variable_addr_offset_array;
void* checkpointing_store_memory; // The memory to store all the checkpointed values

void init_checkpointing_memory() {
    int i=0;
    int current_offset=0;
    // Initialize
    checkpoint_variable_addr = (long*) malloc(number_var_checkpoint * sizeof(long));
    checkpoint_variable_addr_offset_array = (int*) malloc(number_var_checkpoint * sizeof(int));

    // Set arrary
    for (i=0; i<number_var_checkpoint; i++){
        checkpoint_variable_addr_offset_array[i] = current_offset;
        current_offset += checkpoint_variables_size_array[i];
    }

    checkpointing_store_memory = (void*) malloc(current_offset);

    printf("Finished - Checkpointing Initialization %d \n");
}

/**
 * Records a checkpoint for a variable in the system.
 *
 * This function is designed to take a snapshot of a variable's state and store it for later retrieval or comparison. 
 * It is typically used in scenarios where system state needs to be monitored or rolled back, such as in debugging, 
 * fault tolerance, or certain types of data processing.
 *
 * @param ptr  A pointer to the variable to be checkpointed. This should point to the actual memory location 
 *             where the variable is stored.
 * @param size The size of the variable in bytes. This is used to determine how much memory needs to be copied 
 *             for the checkpoint.
 * @param type An integer identifier representing the type of the variable. This could be used to distinguish 
 *             between different data types or structures that are being checkpointed.
 * @param id   An integer identifier for the checkpoint instance. This can be used to uniquely identify 
 *             the checkpoint, allowing for retrieval or comparison at a later time.
 *
 * Note: The implementation details, such as how and where the checkpoint data is stored, are not specified 
 * in this comment and depend on the system's architecture and requirements.
 */

void checkpoint_variable(uint64_t* ptr, int size, int type, int id) {
    char* target_store_addr;
    if (need_checkpoint == 1) {
        // Do the checkpoint
        // Do the incremental logging

        target_store_addr = (char*)checkpointing_store_memory + checkpoint_variable_addr_offset_array[id];
        memcpy((void*)target_store_addr, ptr, size);

        // For debug
        printf("[Int] Hello Whale target addr %d \n", *target_store_addr);
        printf("[Int] Hello Whale pointer %d \n", *ptr); 

        printf("[Double] Hello Whale target addr %.2f \n", *(double*)(target_store_addr));
        printf("[Double] Hello Whale pointer %f \n", *(double*)ptr); 
        // printf("Hello Whale pointer 0x%p \n", ptr); // Should print 30
    }
    /*
    else {
        // Do the rollback
        need_checkpoint = 0;
    }
    */
}
#include <iostream>
#include <vector>
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
}
#define ALLOC_UNIT 512

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

int target_funcs[NUM_CFI_TARGETS];


// std::vector<uint8_t*>* buff[2][NUM_INST]={nullptr};
uint8_t* buff[2][NUM_INST][MAX_DATA / ALLOC_UNIT]; // = {nullptr};
int counters[2][NUM_INST]; // = {0};

int replay_counters[2][NUM_INST]; // = {0};

void cspl_data_replay(uint8_t* ptr, int n, int type, int id, int ispointer) {
    if (ispointer) {
        //   replay_counters[type][id];
    }
}
void cspl_data_log(uint8_t* ptr, int n, int type, int id) {
    //  std::cout << " Logging CMPT Data \n";

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
    // std::cout<<"\n";
    // for(int i=0;i<n;i++){
    //    uint8_t t=*(ptr+i);
    //    buffer[type][counter[type]]=t;
    //    counter[type]++;
    //    counter[type]=counter[type]%BUFFSIZE;

    // std::cout<<"\n";
}
// extern "C"
void cspl_inter_cpt_transfer() {
    printf(" Checking Inter-CMPT \n");

    // A dummy function to emulate the overhead of CFI
    int res = 0, i;

    for (i = 0; i < NUM_CFI_TARGETS; i++) {
        res = target_funcs[i];
    }

    return; 
}

void cspl_intra_cpt_transfer() {
    //  exit(0);
    // printf(" Checking Intra-CMPT \n");
    return; 
}
void cspl_unknown_ind_call() {
    printf(" Unknown Call \n");
    return; 
    //  exit(0);
}

void cspl_bug_crash() {
    void (*functionPtr)();
    functionPtr = (void (*)())0x1234;
    functionPtr();
}

void cspl_intra_ind_call() {}
void cspl_inter_ind_call() {}

void cspl_data_inter() {}
void cspl_data_global() {}
void cspl_data_other() {}
void cspl_data_intra() {}
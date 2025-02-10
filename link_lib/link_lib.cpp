#include <iostream>
#include <vector>
#include <map>
#include <algorithm> // For std::find


extern "C" {
   void cspl_inter_cpt_transfer( );
   void cspl_intra_cpt_transfer();
   void cspl_unknown_ind_call();
   void cspl_bug_crash();
   void cspl_intra_ind_call();
  void  cspl_inter_ind_call();

  void cspl_data_inter();
  void cspl_data_global();
  void cspl_data_other();
  void cspl_data_intra();
 void cspl_data_log(uint8_t* ptr, int n, int type, int id);
  void cspl_data_replay(uint8_t* ptr, int n, int type, int id,int ispointer);
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

// #define BUFFSIZE 2048
// uint8_t buffer[2][BUFFSIZE]={0};
// int counter[2]={0};


std::map<int, std::vector<int>> valid_ids_map;

// std::vector<uint8_t*>* buff[2][NUM_INST]={nullptr};
uint8_t* buff[2][NUM_INST][MAX_DATA/ALLOC_UNIT]={nullptr};
int counters[2][NUM_INST]={0};

int replay_counters[2][NUM_INST]={0};

void cspl_data_log(uint8_t* ptr, int n, int type, int id){
   // cout<<"CMPT data logging\n";
   if(buff[type][id][(counters[type][id]%MAX_DATA)/ALLOC_UNIT]==nullptr){
         // buff[type][id]=new std::vector<uint8_t*>();
         buff[type][id][(counters[type][id]%MAX_DATA)/ALLOC_UNIT]=new uint8_t[ALLOC_UNIT];
         // buff[type][id]->push_back(pointer);
   }
   int c=(counters[type][id]%MAX_DATA);
    if(buff[type][id][((c+n)%MAX_DATA)/ALLOC_UNIT]==nullptr){
         // buff[type][id]=new std::vector<uint8_t*>();
         buff[type][id][((c+n)%MAX_DATA)/ALLOC_UNIT]=new uint8_t[ALLOC_UNIT];
         // buff[type][id]->push_back(pointer);
   }

   for(int i=0;i<n;i++){
      uint8_t t=*(ptr+i);
      
      buff[type][id][((c+i)%MAX_DATA)/ALLOC_UNIT][(c+i)%ALLOC_UNIT]=t;
   }

   counters[type][id]+=n;
   // counters[type][id]=counters[type][id]%MAX_DATA;
   // std::cout<<"\n";
   // for(int i=0;i<n;i++){
   //    uint8_t t=*(ptr+i);
   //    buffer[type][counter[type]]=t;
   //    counter[type]++;
   //    counter[type]=counter[type]%BUFFSIZE;
     
   
   // std::cout<<"\n";
}

void cspl_inter_cpt_transfer (int src, int dst){

   std::vector<int> targets = valid_ids_map[src];

   if (std::find(targets.begin(), targets.end(), dst) != targets.end()) {
      // Valide cases
      return;
   }

   std::cerr << "invalid compartment transfer";
}


void cspl_unknown_ind_call(){

}

void cspl_bug_crash(){
   void (*functionPtr)();
   functionPtr = (void (*)())0x1234;
   functionPtr(); 
}

   void cspl_intra_ind_call(){}
void  cspl_inter_ind_call(){}

void cspl_data_inter(){}
void cspl_data_global(){}
void cspl_data_other(){}
void cspl_data_intra(){}
#include <stdlib.h>
#include <fstream>
#include <vector>
#include <sys/types.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <chrono>

#include <time.h>

#define NUM_FUNC 7070
#define START_IDX 0
#define END_IDX 1
#define COUNT_IDX 2
#define SQ_SUM_IDX 3
#define TOTAL_SUM_IDX 4
#define MIN_IDX 5
#define MAX_IDX 6

#define TEST_NUM 1000
#define PRINT_FREQ 100
__thread unsigned long alldata[NUM_FUNC][7]={0};

// __thread unsigned int count=0;
std::ofstream* outfile=nullptr;

extern "C" {
   void cspl_beginInst(int n);
  void cspl_returnInst(int n);
}
void cspl_beginInst(int n){
  if(alldata[n][COUNT_IDX]>=TEST_NUM){
    return;
  }

   clock_t start = clock();
   alldata[n][START_IDX]=start;
    // Your code here
    // clock_t end = clock();

}

void cspl_returnInst(int n){
   if(alldata[n][COUNT_IDX]>=TEST_NUM){
    return;
  }
  alldata[n][COUNT_IDX]++;

   clock_t end = clock();
   alldata[n][END_IDX]=end;

   unsigned long tmp = end-alldata[n][START_IDX];
   alldata[n][SQ_SUM_IDX]+=tmp*tmp;
   alldata[n][TOTAL_SUM_IDX]+=tmp;
  if(alldata[n][MIN_IDX]==0||alldata[n][MIN_IDX]>tmp){
    alldata[n][MIN_IDX]=tmp;
  }

  if(alldata[n][MAX_IDX]<tmp){
    alldata[n][MAX_IDX]=tmp;
  }

  if(alldata[n][COUNT_IDX]!=0&&alldata[n][COUNT_IDX]%PRINT_FREQ==0){
    if(!outfile){
     outfile=new std::ofstream();
      outfile->open("/tmp/func_profile.txt");
      
    }
    double mean=(double)alldata[n][TOTAL_SUM_IDX]/alldata[n][COUNT_IDX];

    *outfile<<n<<" : "<<alldata[n][COUNT_IDX]/PRINT_FREQ<<" "<< alldata[n][SQ_SUM_IDX] <<" "<< alldata[n][TOTAL_SUM_IDX] <<" "<<alldata[n][MIN_IDX]<< " "<<alldata[n][MAX_IDX]<<" ---- std: "
    <<((double)alldata[n][SQ_SUM_IDX]/alldata[n][COUNT_IDX]-(mean*mean))/(mean*mean) <<"\n";
    outfile->flush();
    // return;
  }


}


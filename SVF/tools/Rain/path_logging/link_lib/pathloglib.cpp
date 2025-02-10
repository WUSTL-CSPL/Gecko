#include <stdlib.h>
#include <fstream>
#include <vector>
#include <sys/types.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <chrono>

#include "ros/ros.h"

#define gettid() ((pid_t)syscall(SYS_gettid))

__thread unsigned int count=0;
#define BATCH_SIZE 100000
__thread int my_var=0;
__thread int start=0;
// int batch_size=10000;
__thread int path[BATCH_SIZE];
// unsigned int tid[BATCH_SIZE];
__thread std::ofstream* outfile=nullptr;
   
 __thread   std::chrono::time_point<std::chrono::system_clock, std::chrono::nanoseconds>  start_time;

extern "C" {
   void cspl_path_log( int n);
   void cspl_start();
   void cspl_end();
}
void cspl_path_log(int n){
  //  if(!outfile){
  //     outfile=new std::ofstream();
  //     outfile->open(std::to_string(78686)+"_pathlogs.txt");
  //   }
    
    // return;
    if(!start){
      return;
    }
    // if(!my_var){
    //   my_var=gettid();
    // }
 
    
      path[count]=n;
      
      count++;   
      // path.push_back(n);
  if(count%BATCH_SIZE==0){
    count=0;
   
    // if(!outfile){
    //   outfile=new std::ofstream();
    //   outfile->open("pathlogs.txt");
    // }
      for(int i=0;i<BATCH_SIZE;i++){
        // (*outfile)<<path[i]<<","<<my_var<<" ";
         (*outfile)<<path[i]<<" ";
        // (*outfile)<<tid[i]<<" ";
      }
      outfile->flush();

    }
}

      void cspl_start(){

        start=1;
        start_time=std::chrono::high_resolution_clock::now();
         if(!my_var){
      my_var=gettid();
    }

         if(!outfile){
      outfile=new std::ofstream();
      outfile->open(std::to_string(my_var)+"_pathlogs.txt");
    }
      (*outfile)<<"csp_start,"<<my_var<<" ";


      }
   void cspl_end(){
     start=0;
    //  if(!my_var){
    //   my_var=gettid();
    // }
    //      if(!outfile){
    //   outfile=new std::ofstream();
    //   outfile->open("pathlogs.txt");
    // }
       for(int i=0;i<count;i++){
        // (*outfile)<<path[i]<<","<<my_var<<" ";
        (*outfile)<<path[i]<<" ";
      }
      count=0;
    auto end_time = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::nanoseconds>(end_time - start_time);


      (*outfile)<<" cspl_end,"<<my_var<<","<<duration.count()<<"\n";
      outfile->flush();
      }
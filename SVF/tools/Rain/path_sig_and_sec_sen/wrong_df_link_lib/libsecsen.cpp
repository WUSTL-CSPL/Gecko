#include <stdlib.h>
#include <fstream>
#include <vector>
#include <sys/types.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <chrono>
#include <time.h>
#include <set>
#include <vector>

#include <functional>

#define BATCHSIZE 5
#define BBCOUNT 300000
#define SFCOUNT 40

#define gettid() ((pid_t)syscall(SYS_gettid))

__thread unsigned int path_length=0;

__thread std::size_t my_hash=0;

__thread std::size_t input_hash=0;

__thread std::size_t batch_input_hash[BATCHSIZE]={0};
__thread std::size_t batch_path_hash[BATCHSIZE]={0};
__thread unsigned int batch_path_length[BATCHSIZE]={0};
__thread std::size_t batch_time[BATCHSIZE]={0};
__thread int batch_count=0;

__thread double logbuf[1000];
__thread  int log_count=0;

__thread int cspl_start=0;

__thread clock_t start_time;
__thread bool df_start;
thread_local std::set<int> sen_func_set;
thread_local std::set<int> all_sen_func_set;

 thread_local std::vector<int> cspl_df_set(BBCOUNT,-1);
// thread_local std::map<int,int>* df_map=nullptr;
 thread_local std::vector<int> cspl_all_df_set(BBCOUNT,-1);

  thread_local std::vector<int> cspl_func_df_set(SFCOUNT,-1);
// thread_local std::map<int,int>* all_df_map=nullptr;
// thread_local std::vector<int> ggggh(BBCOUNT,-1);

thread_local int df_size=0;
thread_local int all_df_size=0;

// __thread std::ofstream* path_outfile=nullptr;
extern std::ofstream* outfile;
extern __thread bool cspl_stop;
//  __thread  std::hash<int> hasher;

std::size_t hasher(std::size_t value) {
    std::size_t hash = (value);

    // Perform bitwise operations to improve distribution
    hash ^= hash << 16;
    hash ^= hash >> 5;
    hash ^= hash << 1;

    return hash;
}



extern "C" {
   void cspl_path_sig( int name,int bsize);
   void cspl_path_sig_start (int name);
      void cspl_path_sig_end (int name);
             void cspl_inputhash(int num,int batch, ...);
             void cspl_logging(int num, ...);
            void  cspl_sensitive(int num, ...);
            void cspl_path_df( int name,int bsize);

}
void cspl_path_sig(int name,int bsize){

    if(!cspl_start||cspl_stop){
      return;
    }
    path_length+=bsize;

    // (*outfile)<<" ddd "<<my_hash<< "  "<<name << "  ";
    my_hash=hasher(my_hash+name);

}

 

  void cspl_path_sig_start(int name){
       
        if(cspl_stop){
          return;
        }
        for(int i=0;i<BATCHSIZE;i++){
           batch_path_length[i]=0;
        batch_path_hash[i]=0;
        batch_input_hash[i]=0;
        }
        batch_count=0;

         my_hash=0;
        path_length=0;
        input_hash=0;
      sen_func_set.clear();
      cspl_df_set.assign(cspl_df_set.size(),-1);
      cspl_func_df_set.assign(cspl_func_df_set.size(),-1);
   
     log_count=0;
        cspl_start=1;

        df_start=1;
        df_size=0;
   

        start_time=clock();
     
         if(!outfile){
      outfile=new std::ofstream();
      // outfile->open("/tmp/func_profile.txt",std::ios::app);
      outfile->open("/tmp/func_profile.txt");
    }
      


      }
   void cspl_path_sig_end(int name){
        if(!cspl_start||cspl_stop){

          cspl_start=0;
          return;
        }
     cspl_start=0;
      (*outfile)<<" [ ";
       (*outfile)<<path_length<<"-"<<my_hash<<"-"<<input_hash<<" ";
      for(int i=0;i<batch_count;i++){
        (*outfile)<<batch_path_length[i]<<"-"<<batch_path_hash[i]<<"-"<<batch_input_hash[i]<<"-"<<batch_time[i]<<":";
      }
      (*outfile)<<" ] ";
      

      (*outfile)<<" {";
      for(int i=0;i<log_count;i++){
        (*outfile)<<logbuf[i]<<"_";
      }
      (*outfile)<<"} ";

      (*outfile)<<" <";
      // for(int i=0;i<log_count;i++){
      //   (*outfile)<<logbuf[i]<<"_";
      // }
      (*outfile)<<sen_func_set.size()<<"-"<<all_sen_func_set.size()<<"-"<<df_size<<"-"<<all_df_size;
      (*outfile)<<"> ";

      (*outfile)<<" H";
      for(int i=0;i<cspl_func_df_set.size();i++){
        if(cspl_func_df_set[i]>0){
             (*outfile)<<cspl_func_df_set[i]<<"-";
        }
       
      }
        (*outfile)<<"H ";
      sen_func_set.clear();
       log_count=0;
       batch_count=0;
      outfile->flush();
      }

       void cspl_inputhash(int num,int batch, ...){
        // path_length=0;//tmp

        if(!cspl_start||cspl_stop){

          return;
        }

           va_list args;
          va_start(args, num);

          if(batch_count<=batch){
            batch_count=batch+1;
          }
          for (int i = 0; i < num; i++) {
              double tmp = va_arg(args,double);
              size_t value=*((size_t*)&tmp);
              input_hash=hasher(input_hash+ (size_t)value);
              batch_input_hash[batch]=input_hash;
              // printf("%d ", value);
          }

          va_end(args);
          batch_path_length[batch]=path_length;
          batch_path_hash[batch]=my_hash;
          clock_t nowtime=clock();
          batch_time[batch]=nowtime-start_time;

       }

void cspl_logging(int num, ...){
        

        if(!cspl_start||cspl_stop){

          return;
        }

           va_list args;
          va_start(args, num);

          for (int i = 0; i < num; i++) {
              double tmp = va_arg(args,double);
              logbuf[log_count]=tmp;
               log_count++;
              // printf("%d ", value);
          }

          va_end(args);

       }


  void cspl_sensitive(int num, ...){
     if(!cspl_start||cspl_stop){

          return;
        }
        if(num<0){
          if(num==-1){
              df_start=0;
          }else if(num==-2){
            df_start=1;
          }
          return;          
        }
      sen_func_set.insert(num);
     all_sen_func_set.insert(num);
     cspl_func_df_set[num]=df_size;
    
  }

void cspl_path_df( int name,int bsize){
    return;
     if(!cspl_start||cspl_stop){
      return;
    }
    if(!df_start){
      return;
    }


  if(cspl_df_set[name]==-1){
    // ggggh[name]=bsize;
    cspl_df_set[name]=bsize;
    df_size+=bsize;
  }
 if(cspl_all_df_set[name]==-1){
    cspl_all_df_set[name]=bsize;
    all_df_size+=bsize;
  }

 }
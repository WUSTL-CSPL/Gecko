#include <stdlib.h>
// #include "ros/ros.h"
unsigned int count=0;
extern "C" {
    void dfi_store_check(int n);
    void dfi_load_check(int n);
}
void dfi_store_check(int n){
  return;
  count++;
  if(count%100000==0){
    count=0;
    // ROS_WARN("dfi_store %d\n",count);
    // printf("THIs is nnnn %d\n",count);
  }

    
    return;

}

void dfi_load_check(int n){
  // count++;
  for(int i=0;i<n;i++){

  }
  return;
  
  if(count%100000==0){
    count=0;
    //  ROS_WARN("dfi_load %d\n",count);
  }
    return;

}
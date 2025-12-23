#include <stdio.h>  
#include <string.h>  
  
int binarySearch(char arr[][20], int n, char key[])   
  
{  
    int low = 0, high = n - 1;  
    while (low <= high)   
{  
        
  int mid = (low + high) / 2;  
        int cmp = strcmp(arr[mid], key);  
        if (cmp == 0)  
            return mid;      // found  
          
else if (cmp < 0)  
            low = mid + 1;  
        else  
            high = mid - 1;  
      
}  
  
    return -1;   / 

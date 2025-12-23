#include <stdio.h>  
#include <string.h>  
  
int linearSearch(char arr[][20], int n, char key[])   
  
{  
    for(int i = 0; i < n; i++)  
 {  
        if(strcmp(arr[i], key) == 0)  // match found  
            return i;  
    }  
     
 return -1;  // not found  
}  
 int main()  
  
 {  
    char arr[][20] = {"apple", "banana", "cherry", "mango", "orange"}; File Submitted by: Shweta 
Mehta(0902CS241156)  
 
    int n = 5;  
    char key[] = "cherry";  
  
    int result = linearSearch(arr, n, key);  
    if(result != -1)  
        printf("String '%s' found at index % 

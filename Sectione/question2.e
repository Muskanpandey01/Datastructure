#include <stdio.h>  
  
int binarySearch(int a[], int n, int key)  
  
 {  
    int low = 0, high = n - 1;  
    while (low <= high)   
{  
        int mid = (low + high) / 2;  
        if (a[mid] == key)  
            return mid;       // found, return index  
        else if (a[mid] < key)  
            low = mid + 1;  
        else  
            high = mid - 1;  
    }  
    return -1;  // not found  
}  
  
int main()  
 {  
    int a[] = {1, 3, 5, 7, 9};  
int n = 5;  
int key = 7;  
int result = binarySearch(a, n, key);  
if(result != -1)  
printf("Element %d found at index %d\n", key, result);  
else  
printf("Element %d not found\n", key);  
return 0;  
} 

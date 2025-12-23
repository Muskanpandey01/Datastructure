a) Bubble Sort (C)  
  
void bubble(int a[], int n)  
  
 {  
    for (int i = 0; i < n-1; i++)  
        for (int j = 0; j < n-i-1; j++)  
            if (a[j] > a[j+1])   
{  
                int t = a[j]; a[j] = a[j+1]; a[j+1] = t;  
            }  
}  
  
  
b) Selection Sort (C)  
void selection(int a[], int n)  
 {  
    for (int i = 0; i < n-1; i++)  
 {  
        int min = i;  
    
  
    
  
        for (int j = i+1; j < n; j++)  
            if (a[j] < a[min]) min = j;  
        int t = a[i]; a[i] = a[min]; a[min] = t;  
    }  
}  
  
  
c) Insertion Sort (C)  
void insertion(int a[], int n)  
 {  
    for (int i = 1; i < n; i++)  
 {  
        int key = a[i], j = i-1;  
        while (j >= 0 && a[j] > key) {  
            a[j+1] = a[j];  
            j--;  
        }  
        a[j+1] = key;  
    }  
}  
  
  
d) Quick Sort (C)  
int partition(int a[], int low, int high)  
 {  
    int p = a[high], i = low-1;  
    for (int j = low; j < high; j++)  
        if (a[j] < p)   
{  
i++;  
int t = a[i]; a[i] = a[j]; a[j] = t;  
}  
int t = a[i+1]; a[i+1] = a[high]; a[high] = t;  
return i+1;  
}  
void quick(int a[], int low, int high)   
{  
{  
}  
if (low < high)  
int pi = partition(a, low, high);  
quick(a, low, pi-1);  
quick(a, pi+1, high);  
} 

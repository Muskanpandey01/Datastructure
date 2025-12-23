#include <stdio.h>  
#include <stdlib.h>  
#include <string.h>  
// Node structure  
struct Node  
{  
};  
char data[20];  
struct Node* next;  
// Function to create a new node  
struct Node* createNode(char str[])  
{  
}  
struct Node* n = (struct Node*)malloc(sizeof(struct Node));  
strcpy(n->data, str);  
n->next = NULL;  
return n;  
// Function to insert at end  
void insertEnd(struct Node** head, char str[])   
{  
struct Node* n = createNode(str);  
if(*head == NULL)   
{  
        *head = n;  
        return;  
    }  
    struct Node* temp = *head;  
    while(temp->next != NULL)  
        temp = temp->next;  
    temp->next = n;  
}  
  
  
// Convert linked list to array  
  
int linkedListToArray(struct Node* head, char arr[][20])   
  {  
    int i = 0;  
    while(head != NULL)   
{  
        strcpy(arr[i++], head->data);  
        head = head->next;  
    }  
    return i; // number of elements  
}  
  
  
// Binary Search on array of strings  
  
int binarySearch(char arr[][20], int n, char key[])  
 {  
    
  
    
  
    int low = 0, high = n-1;  
    while(low <= high)   
{  
        int mid = (low + high)/2;  
        int cmp = strcmp(arr[mid], key);  
        if(cmp == 0) return mid;  
        else if(cmp < 0) low = mid + 1;  
        else high = mid - 1;  
    }  
    return -1;  
}  
  
// Main function  
  
int main()  
 {  
    struct Node* head = NULL;  
  
    // Insert sorted strings  
  
    insertEnd(&head, "apple");  
    insertEnd(&head, "banana");  
    insertEnd(&head, "cherry");  
    insertEnd(&head, "mango");  
    insertEnd(&head, "orange");  
  
    // Convert linked list to array  
     
 char arr[100][20];  
    int n = linkedListToArray(head, arr);  
// Search for a key  
char key[] = "mango";  
int index = binarySearch(arr, n, key);  
if(index != -1)  
printf("String '%s' found at index %d\n", key, index);  
else  
printf("String '%s' not found\n", key);  
return 0;  
} 

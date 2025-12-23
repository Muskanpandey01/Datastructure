#include <stdio.h>  
#include <stdlib.h>  
struct node   
{  
};  
int data;  
struct node* next;  
struct node *front = NULL, *rear = NULL;  
void enqueue(int x)   
{  
}  
struct node* n = malloc(sizeof(struct node));  
n->data = x; n->next = NULL;  
if (rear == NULL) front = rear = n;  
else rear->next = n, rear = n;  
void dequeue()   
{  
}  
if (front == NULL) return;  
struct node* t = front;  
front = front->next;  
if (front == NULL) rear = NULL;  
free(t);  
int main()  
{  
enqueue(10);  
enqueue(20);  
dequeue();  
return 0;  
}  

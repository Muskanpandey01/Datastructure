 #include <stdio.h>  
#define MAX 5  
int cq[MAX];  
int front = -1, rear = -1;  
void enqueue(int x)  
 {  
    if ((rear + 1) % MAX == front)  
        printf("Queue Full\n");  
    else {  
   if (front == -1) front = 0;  
        rear = (rear + 1) % MAX;  
        cq[rear] = x;   
 }  
}  
void dequeue()  
 {  
    if (front == -1)  
        printf("Queue Empty\n");  
    else if (front == rear)  
        front = rear = -1;  
    else  
        front = (front + 1) % MAX;  
}  
  
int main()   
{  
    enqueue(10);  
    enqueue(20);  
    enqueue(30);  
dequeue();  
enqueue(40);  
for (int i = front; i != rear; i = (i + 1) % MAX)  
printf("%d ", cq[i]);  
printf("%d", cq[rear]);  
return 0;} 

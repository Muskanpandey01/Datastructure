#include <stdio.h>  
#include <stdlib.h>  
  
struct node  
 {  
    int data;  
    struct node *left, *right;  
};  
  
struct node* insert(struct node* root, int x)  
 {  
    if (root == NULL)  
 {  
        struct node* n = malloc(sizeof(struct node));  
        n->data = x; n->left = n->right = NULL;  
        return n;  
    }  
    if (x < root->data)  
        root->left = insert(root->left, x);  
    else  
        root->right = insert(root->right, x);  
    return root;  
}  
  
void inorder(struct node* root)   
{  
    if (root != NULL)   
{  
inorder(root->left);  
printf("%d ", root->data);  
inorder(root->right);  
}  
}  
int main()  
{  
struct node* root = NULL;  
root = insert(root, 30);  
insert(root, 20);  
insert(root, 40);  
insert(root, 10);  
inorder(root);   // BST gives sorted order  
return 0;  
} 

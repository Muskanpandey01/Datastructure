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
        n->data = x;  
        n->left = n->right = NULL;  
        return n;  
    }  
    if (x < root->data)  
        root->left = insert(root->left, x);  
    else  
        root->right = insert(root->right, x);  
    return root;  
}  
  
// Inorder  
  
void inorder(struct node* root)  
 {  
    
  
    
  
    if (root)  
 {  
        inorder(root->left);  
        printf("%d ", root->data);  
        inorder(root->right);  
    }  
}  
  
// Preorder  
  
  
void preorder(struct node* root)  
  
 {  
    if (root)   
{  
        printf("%d ", root->data);  
        preorder(root->left);  
        preorder(root->right);  
    }  
}  
  
// Postorder  
  
void postorder(struct node* root) {  
    if (root)  
  
 {  
        postorder(root->left);  
        postorder(root->right);  
        printf("%d ", root->data);  
}  
}  
int main()   
{  
}  
struct node* root = NULL;  
root = insert(root, 30);  
insert(root, 20);  
insert(root, 40);  
insert(root, 10);  
insert(root, 25);  
printf("Inorder   : ");  
inorder(root);  
printf("\nPreorder  : ");  
preorder(root);  
printf("\nPostorder : ");  
postorder(root);  
return 0; 

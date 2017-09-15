#include"RBTree.h"
#include<iostream>
using namespace std;

void RBTree::insert(Node_rb* t)
{
     t->left=0;
     t->right=0;
     t->color=false;
     Node_rb* p=root;
     Node_rb* q=0;
     if(root==0)
     {
           root=t;
           t->parent=0;
     }
     else
     {
         while(p!=0)
         {
              q=p;
              if(p->key<t->key)
                  p=p->right;
              else
                  p=p->left;
         }
         t->parent=q;
         if(q->key<t->key)
              q->right=t;
         else
              q->left=t;
     }
     insertfix(t);
}
void RBTree::insertfix(Node_rb *t)
{
     Node_rb *u;
     if(root==t)
     {
         t->color=true;
         return;
     }
     while(t->parent!=0 && t->parent->color==false)
     {
           Node_rb *g=t->parent->parent;
           if(g->left==t->parent)
           {
                        if(g->right!=0 && g->right->color==false)
                        {
                              u=g->right;
                              t->parent->color=true;
                              u->color=true;
                              g->color=false;
                              t=g;
                        }
                        else
                        {
                            if(t->parent->right==t)
                            {
                                 leftrotate(t->parent);
                                 t->color=true;
                                 g->color=false;
                            }
                            else
                            {
                                 t->parent->color=true;
                                 g->color=false;
                            }
                            rightrotate(g);
                            break;
                        }
           }
           else
           {
                        if(g->left!=0 && g->left->color==false)
                        {
                             u=g->left;
                             t->parent->color=true;
                             u->color=true;
                             g->color=false;
                             t=g;
                        }
                        else
                        {
                            if(t->parent->left==t)
                            {
                                 rightrotate(t->parent);
                                 t->color=true;
                                 g->color=false;
                            }
                            else
                            {
                                 t->parent->color=true;
                                 g->color=false;
                            }
                            leftrotate(g);
                            break;
                        }
           }
           root->color=true;
     }
}


void RBTree::leftrotate(Node_rb *p)
{
     if(p->right==0)
           return ;
     else
     {
           Node_rb *y=p->right;
           if(y->left!=0)
           {
                p->right=y->left;
                y->left->parent=p;
           }
           else
                p->right=0;
           if(p->parent!=0)
                y->parent=p->parent;
           if(p->parent==0){
                root=y;
                y->parent=0;
           }
           else
           {
               if(p==p->parent->left)
                       p->parent->left=y;
               else
                       p->parent->right=y;
           }
           y->left=p;
           p->parent=y;
     }
}
void RBTree::rightrotate(Node_rb *p)
{
     if(p->left==0)
          return ;
     else
     {
         Node_rb *y=p->left;
         if(y->right!=0)
         {
                  p->left=y->right;
                  y->right->parent=p;
         }
         else
                 p->left=0;
         if(p->parent!=0)
                 y->parent=p->parent;
         if(p->parent==0){
                 root=y;
                 y->parent=0;
         }
         else
         {
             if(p==p->parent->left)
                   p->parent->left=y;
             else
                   p->parent->right=y;
         }
         y->right=p;
         p->parent=y;
     }
}

void RBTree::linksuccessor(Node_rb* currentnode){
   
   Node_rb* _M_node = currentnode;
   if (_M_node->right != 0) {
      _M_node = _M_node->right;
      while (_M_node->left != 0)
         _M_node = _M_node->left;
   }
   else {
      if( _M_node->parent == 0)
         _M_node = 0;
      else{
         Node_rb* __y = _M_node->parent;
         while (_M_node == __y->right) {
            _M_node = __y;
            __y = __y->parent;
            if(__y == 0){
               _M_node = 0;
               break;
            }
         }
         if (__y != 0)
            _M_node = __y;
      }
   }
   currentnode->succ = _M_node;
}

Node_rb* RBTree::search(float s){
   
     Node_rb* p=root;
     Node_rb* q=0;
     while(p!=0){
         q=p;
         if(p->key<s)
              p=p->right;
         else
              p=p->left;
     }
     return q;
}

float Node_rb::dis_1_dim(float& target){
     return (target-key) * (target-key);
}

#ifndef RBTREE_H
#define RBTREE_H

#include<list>

#include<iostream>
using namespace std;

struct Node_rb
{
      
       float key;
       Node_rb *parent;
       bool color;
       bool coordinate;      //false = x, true = y
       int index;            //to find the counterpart
       Node_rb *left;
       Node_rb *right;
       Node_rb *succ;
       float dis_1_dim(float&);
       Node_rb(float a){key=a; color=false; };
       Node_rb(){color=false; };
};
class RBTree
{
public:
      Node_rb *min;
      Node_rb *root;
      Node_rb *q;
      RBTree()
      {
              q=0;
              root=0;
      }
      void insert(Node_rb*);
      void insertfix(Node_rb *);
      void leftrotate(Node_rb *);
      void rightrotate(Node_rb *);
      void linksuccessor(Node_rb *);
      Node_rb* search(float);
};

#endif

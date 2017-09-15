#ifndef KDTREE_H
#define KDTREE_H

#include<list>

class Node{

public:

   int level;
   float value[2];
   float rectpos1[2]; // left down
   float rectpos2[2]; // right up
   float rectangledistance(float* , float* );
   float nodedistance(Node* );
   float posdistance(float*);
   Node* leftchild;
   Node* rightchild;
   Node* parent;   
   void Setvalue(float, float);
   Node(float, float);   
   Node();
};

class Tree{

public:
   
   Node* root;
   int size;
   int height;// this height, which is used as crtl var of for_loop, is always greater or equal to actual height
   void insertnode(Node&);
   void deletenode(Node*);
   void rangesearch(std::list<Node*>&, Node*, float*, float*);
   void nearestneighborsearch(Node*, Node*, float&, Node*&);
   float rectangledistance_pos(float* pos, float* LD, float* RU);
   void nearestneighborsearch_pos(Node*, float* pos, float&, Node*&);
   void postswapinitiation(Node*);
   void swapnode(Node*);
   Node* findmin(Node*, int, int);
   Tree();

};

#endif

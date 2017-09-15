#include"KDTree.h"

Node::Node(float a, float b){
   level=1;
   value[0]=a;
   value[1]=b;
   rectpos1[0]=0;
   rectpos1[1]=0;
   rectpos2[0]=1;
   rectpos2[1]=1;
   isinside=false;
}

Node::Node(){
   level=1;
   rectpos1[0]=0;
   rectpos1[1]=0;
   rectpos2[0]=1;
   rectpos2[1]=1;
   isinside=false;
}

void Node::Setfalse(){
   isinside=false;
}


float Node::rectangledistance(float* LD, float* RU){
   float x=0;
   float y=0;
   if(value[0]<LD[0])
      x=(LD[0]-value[0]);
   else if (value[0]>RU[0])
      x=(value[0]-RU[0]);
   if(value[1]<LD[1])
      y=(LD[1]-value[1]);
   else if (value[1]>RU[1])
      y=(value[1]-RU[1]);
   return (x*x+y*y);
}

float Tree::rectangledistance_pos(float* pos, float* LD, float* RU){
   float x=0;
   float y=0;
   if(pos[0]<LD[0])
      x=(LD[0]-pos[0]);
   else if (pos[0]>RU[0])
      x=(pos[0]-RU[0]);
   if(pos[1]<LD[1])
      y=(LD[1]-pos[1]);
   else if (pos[1]>RU[1])
      y=(pos[1]-RU[1]);
   return (x*x+y*y);
}

float Node::nodedistance(Node* ANOTHER){ 
   return (ANOTHER->value[0]-value[0])*(ANOTHER->value[0]-value[0])+(ANOTHER->value[1]-value[1])*(ANOTHER->value[1]-value[1]);
}

float Node::posdistance(float* pos){
   return (pos[0]-value[0])*(pos[0]-value[0])+(pos[1]-value[1])*(pos[1]-value[1]);
}

Tree::Tree(){
   size=0;
   height=0;
}

Node* Tree::findmin(Node* node, int index, int currentindex){ 
// find minimum in the node's subtree include the node itself
   float compare=node->value[index];
   Node* outcome=node;
   if(currentindex!=index){
      if(node->leftchild!=root){
         Node* leftmin=findmin(node->leftchild, index, !currentindex);
         if(leftmin->value[index]<compare){
            compare=leftmin->value[index];
            outcome=leftmin; 
         }  
      }
      if(node->rightchild!=root){
         Node* rightmin=findmin(node->rightchild, index, !currentindex);
         if(rightmin->value[index]<compare){
            outcome=rightmin;
         }   
      }
      return outcome;        
   }
   else{
      if(node->leftchild!=root){
         Node* leftmin=findmin(node->leftchild, index, !currentindex);
         if(leftmin->value[index]<compare)
            return leftmin;
         else
            return node;
      }
      else
         return node;
   }
}

void Tree::insertnode(Node& node){

   if(height==0){
      root=&node;
      height=1;
      node.leftchild=root;
      node.rightchild=root;
      return;
   }
   node.leftchild=root;
   node.rightchild=root;
   int index=0;
   Node* currentnode;
   currentnode=root;
   for(int i=0; i<height; ++i){
      if(currentnode->value[index]<=node.value[index]){
         if(currentnode->rightchild!=root)
            currentnode=currentnode->rightchild;
         else{
            currentnode->rightchild=&node;
            node.parent=currentnode;
            node.rectpos1[index]=currentnode->value[index];
            node.rectpos1[!index]=currentnode->rectpos1[!index];
            node.rectpos2[0]=currentnode->rectpos2[0];
            node.rectpos2[1]=currentnode->rectpos2[1];
            node.level=i+2;
            if(i==(height-1))
               ++height;
            break;
         }      
      }
      else{
         if(currentnode->leftchild!=root)
            currentnode=currentnode->leftchild;
         else{
            currentnode->leftchild=&node;
            node.parent=currentnode;
            node.rectpos2[index]=currentnode->value[index];
            node.rectpos2[!index]=currentnode->rectpos2[!index];
            node.rectpos1[0]=currentnode->rectpos1[0];
            node.rectpos1[1]=currentnode->rectpos1[1];
            node.level=i+2;
            if(i==(height-1))
               ++height;
            break;
         }
      }
      index=!index;
   }
   ++size;
}

void Tree::postswapinitiation(Node* currentnode){
   int index=(currentnode->level+1)%2;
   if(currentnode->rightchild!=root){
      currentnode->rightchild->rectpos1[index]=currentnode->value[index];
      currentnode->rightchild->rectpos1[!index]=currentnode->rectpos1[!index];
      currentnode->rightchild->rectpos2[0]=currentnode->rectpos2[0];
      currentnode->rightchild->rectpos2[1]=currentnode->rectpos2[1];
      postswapinitiation(currentnode->rightchild);
   }
   if(currentnode->leftchild!=root){
      currentnode->leftchild->rectpos2[index]=currentnode->value[index];
      currentnode->leftchild->rectpos2[!index]=currentnode->rectpos2[!index];
      currentnode->leftchild->rectpos1[0]=currentnode->rectpos1[0];
      currentnode->leftchild->rectpos1[1]=currentnode->rectpos1[1];
      postswapinitiation(currentnode->leftchild);
   }
}

void Tree::swapnode(Node* node){
   int index=(node->level+1)%2;
   if(node->rightchild!=root){
      Node* rightmin=findmin(node->rightchild, index, !index);
      node->value[0]=rightmin->value[0];
      node->value[1]=rightmin->value[1];
      swapnode(rightmin);
   }
   else if(node->leftchild!=root){
      Node* leftmin=findmin(node->leftchild, index, !index);
      node->value[0]=leftmin->value[0];
      node->value[1]=leftmin->value[1];
      node->rightchild=node->leftchild;
      node->leftchild=root;
      swapnode(leftmin);      
   }
   else{
      node=root;
      --size;
      return;//height doesn't need to be modified since it is only the crtl var of for_loop in insertion.
   }
}

void Tree::deletenode(Node* node){
   swapnode(node);
   postswapinitiation(node);
}

void Tree::rangesearch(std::list<Node*>& OUTCOME, Node* CURRENT, float* LD, float* RU){ //LD = left down, RU = right up
   if(LD[0]<=CURRENT->value[0]&&CURRENT->value[0]<=RU[0]&&LD[1]<=CURRENT->value[1]&&CURRENT->value[1]<=RU[1]){
      CURRENT->isinside=!CURRENT->isinside;
      OUTCOME.push_back(CURRENT);
   }
   if(CURRENT->leftchild!=root){
      if(CURRENT->leftchild->rectpos1[0]<RU[0]&&
         CURRENT->leftchild->rectpos1[1]<RU[1]&&
         CURRENT->leftchild->rectpos2[0]>LD[0]&&
         CURRENT->leftchild->rectpos2[1]>LD[1])
         rangesearch(OUTCOME, CURRENT->leftchild, LD, RU);
   }
   if(CURRENT->rightchild!=root){
      if(CURRENT->rightchild->rectpos1[0]<RU[0]&&
         CURRENT->rightchild->rectpos1[1]<RU[1]&&
         CURRENT->rightchild->rectpos2[0]>LD[0]&&
         CURRENT->rightchild->rectpos2[1]>LD[1])
         rangesearch(OUTCOME, CURRENT->rightchild, LD, RU);
   }
   return;
}


void Tree::nearestneighborsearch(Node* CURRENT, Node* QUERY, float& shortest, Node*& OUTCOME){
   if(CURRENT->nodedistance(QUERY)<shortest&&CURRENT->nodedistance(QUERY)!=0){
      OUTCOME=CURRENT;
      shortest=CURRENT->nodedistance(QUERY);
   }
   if(QUERY->rectangledistance(CURRENT->leftchild->rectpos1, CURRENT->leftchild->rectpos2)<shortest&&CURRENT->leftchild!=root)
      nearestneighborsearch(CURRENT->leftchild, QUERY, shortest, OUTCOME);
   if(QUERY->rectangledistance(CURRENT->rightchild->rectpos1, CURRENT->rightchild->rectpos2)<shortest&&CURRENT->rightchild!=root)
      nearestneighborsearch(CURRENT->rightchild, QUERY, shortest, OUTCOME);  
}

void Tree::nearestneighborsearch_pos(Node* CURRENT, float* pos, float& shortest, Node*& OUTCOME){
   if(CURRENT->posdistance(pos)<shortest){
      OUTCOME=CURRENT;
      shortest=CURRENT->posdistance(pos);
   }
   if(rectangledistance_pos(pos, CURRENT->leftchild->rectpos1, CURRENT->leftchild->rectpos2)<shortest&&CURRENT->leftchild!=root)
      nearestneighborsearch_pos(CURRENT->leftchild, pos, shortest, OUTCOME);
   if(rectangledistance_pos(pos, CURRENT->rightchild->rectpos1, CURRENT->rightchild->rectpos2)<shortest&&CURRENT->rightchild!=root)
      nearestneighborsearch_pos(CURRENT->rightchild, pos, shortest, OUTCOME);
}

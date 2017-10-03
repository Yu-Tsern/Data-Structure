#include<iostream>
#include<fstream>
#include<iomanip>
#include"KDTree.h"
#include"RBTree.h"
#include<time.h>

using namespace std;

int main(){

cout<<"generating random data..."<<endl;
// generating random data
   srand(time(NULL));
   const int N=8000;
   float xrand=0;
   float yrand=0;
   static Node testbench[N];
   for(int j=0; j<N; ++j){
      xrand=static_cast<float>(rand())/static_cast<float>(RAND_MAX);
      yrand=static_cast<float>(rand())/static_cast<float>(RAND_MAX);
      testbench[j]=Node(xrand, yrand);
   }
   Tree testtree;
   clock_t tStart0 = clock();
   for(int i=0; i<N; ++i){
      testtree.insertnode(testbench[i]);
   }     
   cout<<"number of nodes: "<<N<<endl; 
   printf("Time taken to construct a tree: %.2fs\n", (double)(clock() - tStart0)/CLOCKS_PER_SEC);  


cout<<endl;
cout<<"read input100K.txt..."<<endl;
// input 100K //
   ifstream input;
   input.open("input100K.txt");
   const int k=100000;
   float xin=0;
   float yin=0;
   Node node[k];
   for(int i=0; i<k; ++i){
      input>>xin>>yin;
      node[i]=Node(xin, yin);
   }
   input.close();


cout<<endl;
cout<<"tree construction of input100K.txt..."<<endl;
// counstruction of tree //
   Tree tree;
   for(int i=0; i<k; ++i){
      tree.insertnode(node[i]);
   }


cout<<endl;
cout<<"nearest neighbor search of (0.5,0.5) with 100K input..."<<endl;
// 3.(a) //
// nearest neighbor search //
   float pos[2]={0.5, 0.5};
   float shortest=1;
   Node* OUTCOME=NULL;
   tree.nearestneighborsearch_pos(tree.root, pos, shortest, OUTCOME);
   cout<<"the nearest point is: ";
   cout<<"("<<OUTCOME->value[0]<<","<<OUTCOME->value[1]<<")"<<endl;
   cout<<"please enter the search key"<<endl;
   shortest=1;
   cin>>pos[0]>>pos[1];
   tree.nearestneighborsearch_pos(tree.root, pos, shortest, OUTCOME);
   cout<<"the nearest point is: ";
   cout<<"("<<OUTCOME->value[0]<<","<<OUTCOME->value[1]<<")"<<endl;


cout<<endl;
cout<<"range search of (0.3,0.3) (0.3,0.41) (0.6,0.3) (0.6,0.41) with 100K input..."<<endl;
// 3.(b) //
// range search //
   list<Node*> out;
   float LD[2]={0.3, 0.3};
   float RU[2]={0.6, 0.41};
   tree.rangesearch(out, tree.root, LD, RU);
   cout<<"the number of points in the range = "<<out.size()<<endl;
   fstream fout;
   fout.open("output100K.txt", ios::out);
   for (list<Node*>::iterator ci = out.begin(); ci != out.end(); ++ci)
      fout<<setw(8)<<setprecision(7)<<(*ci)->value[0]<<setw(9)<<setprecision(7)<<(*ci)->value[1]<<endl;  
   fout.close();
   cout<<"please enter the search range (only the left-down and right-up points are required)"<<endl;
   cin>>LD[0]>>LD[1]>>RU[0]>>RU[1];
   list<Node*> out_customed;
   tree.rangesearch(out_customed, tree.root, LD, RU);
   cout<<"number of points in the range = "<<out_customed.size()<<endl;
   fout.open("output100K_customed.txt", ios::out); 
   for (list<Node*>::iterator ci = out_customed.begin(); ci != out_customed.end(); ++ci)
      fout<<setw(8)<<setprecision(7)<<(*ci)->value[0]<<setw(9)<<setprecision(7)<<(*ci)->value[1]<<endl;  
   fout.close();

cout<<endl;
cout<<"analysis of time consumed when doing nearest neighbor search of 100K input size..."<<endl;
// 3.(c) //
// cost of time when performing nearest neighbor search function //
   srand(time(NULL));
   float test[k][2];
   for(int i=0; i<k; ++i){
      test[i][0]=static_cast<float>(rand())/static_cast<float>(RAND_MAX);
      test[i][1]=static_cast<float>(rand())/static_cast<float>(RAND_MAX);
   }
   clock_t tStart1 = clock();
   for(int i=0; i<k; ++i){
      float s=1;
      tree.nearestneighborsearch_pos(tree.root, test[i], s, OUTCOME);      
   }
   cout<<"number of operations: "<<k<<endl;
   printf("Time taken: %.2fs\n", (double)(clock() - tStart1)/CLOCKS_PER_SEC);


cout<<endl;
cout<<"read input1M.txt..."<<endl;
// input 1M //
   ifstream input_1;
   input_1.open("input1M.txt");
   const int k_1=1000000;
   float xin_1=0;
   float yin_1=0;
   static Node node_1[k_1];
   for(int i=0; i<k_1; ++i){
      input_1>>xin_1>>yin_1;
      node_1[i]=Node(xin_1, yin_1);
   }
   input_1.close();  

cout<<endl;
cout<<"tree construction of input1M.txt..."<<endl;
// counstruction of tree_1 //
   Tree tree_1;
   for(int i=0; i<k_1; ++i){
      tree_1.insertnode(node_1[i]);
   }


cout<<endl;
cout<<"nearest neighbor search of (0.5,0.5) with 1M input..."<<endl;
// 3.(a) //
// nearest neighvor search //
   float pos_1[2]={0.5, 0.5};
   float shortest_1=1;
   Node* OUTCOME_1=NULL;
   tree_1.nearestneighborsearch_pos(tree_1.root, pos_1, shortest_1, OUTCOME_1);
   cout<<"the nearest point is: ";
   cout<<"("<<OUTCOME_1->value[0]<<","<<OUTCOME_1->value[1]<<")"<<endl;   
   cout<<"please enter the search key"<<endl;
   shortest_1=1;
   cin>>pos_1[0]>>pos_1[1];
   tree_1.nearestneighborsearch_pos(tree_1.root, pos_1, shortest_1, OUTCOME_1);
   cout<<"the nearest point is: ";
   cout<<"("<<OUTCOME_1->value[0]<<","<<OUTCOME_1->value[1]<<")"<<endl;


cout<<endl;
cout<<"range search of (0.3,0.3) (0.3,0.41) (0.6,0.3) (0.6,0.41) of 1M input size..."<<endl;
// 3.(b) //
// range search //
   list<Node*> out_1;
   float LD_1[2]={0.3, 0.3};
   float RU_1[2]={0.6, 0.41};
   tree_1.rangesearch(out_1, tree_1.root, LD_1, RU_1);
   cout<<"number of points in the range = "<<out_1.size()<<endl;
   fstream fout_1;
   fout_1.open("output1M.txt", ios::out);
   for (list<Node*>::iterator ci = out_1.begin(); ci != out_1.end(); ++ci)
      fout_1<<setw(8)<<setprecision(7)<<(*ci)->value[0]<<setw(9)<<setprecision(7)<<(*ci)->value[1]<<endl;  
   fout_1.close();
   cout<<"please enter the search range (only the left-down and right-up points are required)"<<endl;
   cin>>LD_1[0]>>LD_1[1]>>RU_1[0]>>RU_1[1];
   list<Node*> out_1_customed;
   tree_1.rangesearch(out_1_customed, tree_1.root, LD_1, RU_1);
   cout<<"number of points in the range = "<<out_1_customed.size()<<endl;
   fout_1.open("output1M_customed.txt", ios::out); 
   for (list<Node*>::iterator ci = out_1_customed.begin(); ci != out_1_customed.end(); ++ci)
      fout_1<<setw(8)<<setprecision(7)<<(*ci)->value[0]<<setw(9)<<setprecision(7)<<(*ci)->value[1]<<endl;  
   fout_1.close();


cout<<endl;
cout<<"analysis of time consumed when doing nearest neighbor search of 1M input size..."<<endl;
// 3.(c) //
// cost of time when performing nearest neighbor search function //
   srand(time(NULL));
   const int k_2=100000;
   static float test_1[k_2][2];
   for(int i=0; i<k_2; ++i){
      test_1[i][0]=static_cast<float>(rand())/static_cast<float>(RAND_MAX);
      test_1[i][1]=static_cast<float>(rand())/static_cast<float>(RAND_MAX);
   }
   clock_t tStart2 = clock();
   for(int i=0; i<k_2; ++i){
      float s_1=1;
      tree_1.nearestneighborsearch_pos(tree_1.root, test_1[i], s_1, OUTCOME_1);      
   }
   cout<<"number of operations: "<<k_2<<endl;
   printf("Time taken: %.2fs\n", (double)(clock() - tStart2)/CLOCKS_PER_SEC);


cout<<endl;
cout<<"tree_rb construction of input100K.txt..."<<endl;
// counstruction of tree_rb //

   RBTree rbtx, rbty;
   static Node_rb rbnx[k];
   static Node_rb rbny[k];
   Node_rb* temptr;
   for(int i=0; i<k; ++i){
      rbnx[i]=Node_rb(node[i].value[0]);
      rbny[i]=Node_rb(node[i].value[1]);
      rbnx[i].index=i;
      rbny[i].index=i;
      temptr=&rbnx[i];
      rbtx.insert(temptr);
   }

   Node_rb* __x = rbtx.root;
   while(__x->left != 0) 
      __x = __x->left;
   rbtx.min=__x;
   while(__x!=0){
      rbtx.linksuccessor(__x);
      __x=__x->succ;
   }


cout<<endl;
cout<<"nearest neighbor search of (0.5,0.5) with 100K input implemented by RB Tree..."<<endl;
// 4.(a) //
// nearest neighbor search of (0.5, 0.5) with 100K input implemented by RB Tree //
   float pos_rb[2]={0.5, 0.5};
   float shortest_rb=1;
   Node_rb* OUTCOME_rb=NULL;
   Node_rb* check_nr=rbtx.min;
   // nearest neighbor search
   while(check_nr->key<pos_rb[0]){
      if(check_nr->dis_1_dim(pos_rb[0])+rbny[check_nr->index].dis_1_dim(pos_rb[1])<shortest_rb){
         shortest_rb=check_nr->dis_1_dim(pos_rb[0])+rbny[check_nr->index].dis_1_dim(pos_rb[1]);
         OUTCOME_rb=check_nr;
      }
      if(check_nr->succ!=0)
         check_nr=check_nr->succ;
      else
         break;      
   }
   if(check_nr->succ!=0){
      while(check_nr->dis_1_dim(pos_rb[0])<shortest_rb){
         if(check_nr->dis_1_dim(pos_rb[0])+rbny[check_nr->index].dis_1_dim(pos_rb[1])<shortest_rb){
            shortest_rb=check_nr->dis_1_dim(pos_rb[0])+rbny[check_nr->index].dis_1_dim(pos_rb[1]);
            OUTCOME_rb=check_nr;
         }
         check_nr=check_nr->succ;      
      }
   }
   cout<<"the nearest point is: ";
   cout<<"("<<OUTCOME_rb->key<<","<<rbny[OUTCOME_rb->index].key<<")"<<endl;
   cout<<"please enter the search key"<<endl;
   shortest_rb=1;
   check_nr=rbtx.min;
   cin>>pos_rb[0]>>pos_rb[1];
   //nearest neighbor search
   while(check_nr->key<pos_rb[0]){
      if(check_nr->dis_1_dim(pos_rb[0])+rbny[check_nr->index].dis_1_dim(pos_rb[1])<shortest_rb){
         shortest_rb=check_nr->dis_1_dim(pos_rb[0])+rbny[check_nr->index].dis_1_dim(pos_rb[1]);
         OUTCOME_rb=check_nr;
      }
      if(check_nr->succ!=0)
         check_nr=check_nr->succ;      
      else
         break;
   }
   if(check_nr->succ!=0){
      while(check_nr->dis_1_dim(pos_rb[0])<shortest_rb){
         if(check_nr->dis_1_dim(pos_rb[0])+rbny[check_nr->index].dis_1_dim(pos_rb[1])<shortest_rb){
            shortest_rb=check_nr->dis_1_dim(pos_rb[0])+rbny[check_nr->index].dis_1_dim(pos_rb[1]);
            OUTCOME_rb=check_nr;
         }
         if(check_nr->succ!=0)
            check_nr=check_nr->succ;      
         else
            break;
      }
   }
   cout<<"the nearest point is: ";
   cout<<"("<<OUTCOME_rb->key<<","<<rbny[OUTCOME_rb->index].key<<")"<<endl;


cout<<endl;
cout<<"range search of (0.3,0.3) (0.3,0.41) (0.6,0.3) (0.6,0.41) in 100K input implemented by RB Tree..."<<endl;
// 4.(b) //
// comparing the performance of differnet implementations case in 100K input //

   float LD_rb[2]={0.3, 0.3};
   float RU_rb[2]={0.6, 0.41};
   Node_rb* check;
   list<Node_rb*> out_rb;
   check=rbtx.search(LD_rb[0]);
   while(check->succ->key<RU_rb[0]){
      if(LD_rb[1]<=rbny[check->succ->index].key && rbny[check->succ->index].key<RU_rb[1])
         out_rb.push_back(check->succ);
      if(check->succ!=0)
         check=check->succ;
      else
         break;
   }
   cout<<"the number of points in the range = "<<out_rb.size()<<endl;
   fstream fout_rb;
   fout_rb.open("output100K_RBT.txt", ios::out);
   for (list<Node_rb*>::iterator ci = out_rb.begin(); ci != out_rb.end(); ++ci)
      fout_rb<<setw(8)<<setprecision(7)<<(*ci)->key<<setw(9)<<setprecision(7)<<rbny[(*ci)->index].key<<endl;  
   fout_rb.close();
   cout<<"please enter the search range (only the left-down and right-up points are required)"<<endl;
   cin>>LD_rb[0]>>LD_rb[1]>>RU_rb[0]>>RU_rb[1];
   list<Node_rb*> out_customed_rb;
   check=rbtx.search(LD_rb[0]);
   while(check->succ->key<=RU_rb[0]){
      if(LD_rb[1]<=rbny[check->succ->index].key && rbny[check->succ->index].key<=RU_rb[1])
         out_customed_rb.push_back(check->succ);
      if(check->succ->succ!=0)
         check=check->succ;
      else
         break;
   } 
   cout<<"number of points in the range = "<<out_customed_rb.size()<<endl;
   fout_rb.open("output100K_customed_RBT.txt", ios::out); 
   for (list<Node_rb*>::iterator ci = out_customed_rb.begin(); ci != out_customed_rb.end(); ++ci)
      fout_rb<<setw(8)<<setprecision(7)<<(*ci)->key<<setw(9)<<setprecision(7)<<rbny[(*ci)->index].key<<endl;  
   fout_rb.close();


cout<<endl;
cout<<"analysis of time consumed when doing nearest neighbor search by RBT with 100K input..."<<endl;
// 4.(c) //
// cost of time when performing nearest neighbor search function implemented by RBT//
   srand(time(NULL));
   float test_rb[1000][2];
   for(int i=0; i<1000; ++i){
      test_rb[i][0]=static_cast<float>(rand())/static_cast<float>(RAND_MAX);
      test_rb[i][1]=static_cast<float>(rand())/static_cast<float>(RAND_MAX);
   }
   Node_rb* OUTCOME_rb_2=NULL;
   float shortest_rb_2=1;
   clock_t tStart3 = clock();
   for(int i=0; i<1000; ++i){
      shortest_rb_2=1;
      Node_rb* check_nr_2=rbtx.min;
      while(check_nr_2->key<test_rb[i][0]){
         if(check_nr_2->dis_1_dim(test_rb[i][0])+rbny[check_nr_2->index].dis_1_dim(test_rb[i][1])<shortest_rb_2){
            shortest_rb_2=check_nr_2->dis_1_dim(test_rb[i][0])+rbny[check_nr_2->index].dis_1_dim(test_rb[i][1]);
            OUTCOME_rb_2=check_nr_2;
         }
         if(check_nr_2->succ!=0)
            check_nr_2=check_nr_2->succ;
         else
            break;      
      }
      if(check_nr_2!=0){
         while(check_nr_2->dis_1_dim(test_rb[i][0])<shortest_rb_2){
            if(check_nr_2->dis_1_dim(test_rb[i][0])+rbny[check_nr_2->index].dis_1_dim(test_rb[i][1])<shortest_rb_2){
               shortest_rb_2=check_nr_2->dis_1_dim(test_rb[i][0])+rbny[check_nr_2->index].dis_1_dim(test_rb[i][1]);
               OUTCOME_rb_2=check_nr_2;
            }
            if(check_nr_2->succ!=0)
               check_nr_2=check_nr_2->succ;
            else
               break; 
         }        
      }
   }
   cout<<"number of operations: "<<1000<<endl;
   printf("Time taken: %.2fs\n", (double)(clock() - tStart3)/CLOCKS_PER_SEC);


cout<<endl;
cout<<"tree_rb construction of input1M.txt..."<<endl;
// counstruction of tree_rb with 1M input//
   RBTree rbtx_1, rbty_1;
   static Node_rb rbnx_1[k_1];
   static Node_rb rbny_1[k_1];
   Node_rb* temptr_1;
   for(int i=0; i<k_1; ++i){
      rbnx_1[i]=Node_rb(node_1[i].value[0]);
      rbny_1[i]=Node_rb(node_1[i].value[1]);
      rbnx_1[i].index=i;
      rbny_1[i].index=i;
      temptr_1=&rbnx_1[i];
      rbtx_1.insert(temptr_1);
   }

   Node_rb* __x_1 = rbtx_1.root;
   while(__x_1->left != 0) 
      __x_1 = __x_1->left;
   rbtx_1.min=__x_1;
   while(__x_1!=0){
      rbtx_1.linksuccessor(__x_1);
      __x_1=__x_1->succ;
   }


cout<<endl;
cout<<"nearest neighbor search of (0.5,0.5) with 1M input implemented by RB Tree..."<<endl;
// 4.(a) //
// nearest neighbor search of (0.5, 0.5) with 1M input implemented by RB Tree //
   float pos_rb_1[2]={0.5, 0.5};
   float shortest_rb_1=1;
   Node_rb* OUTCOME_rb_1=NULL;
   Node_rb* check_nr_1=rbtx_1.min;
   // nearest neighbor search
   while(check_nr_1->key<pos_rb_1[0]){
      if(check_nr_1->dis_1_dim(pos_rb_1[0])+rbny_1[check_nr_1->index].dis_1_dim(pos_rb_1[1])<shortest_rb_1){
         shortest_rb_1=check_nr_1->dis_1_dim(pos_rb_1[0])+rbny_1[check_nr_1->index].dis_1_dim(pos_rb_1[1]);
         OUTCOME_rb_1=check_nr_1;
      }
      if(check_nr_1->succ!=0)
         check_nr_1=check_nr_1->succ;      
      else
         break;
   }
   if(check_nr_1->succ!=0){
      check_nr_1=check_nr_1->succ;      
      while(check_nr_1->dis_1_dim(pos_rb_1[0])<shortest_rb_1){
         if(check_nr_1->dis_1_dim(pos_rb_1[0])+rbny_1[check_nr_1->index].dis_1_dim(pos_rb_1[1])<shortest_rb_1){
            shortest_rb_1=check_nr_1->dis_1_dim(pos_rb_1[0])+rbny_1[check_nr_1->index].dis_1_dim(pos_rb_1[1]);
            OUTCOME_rb_1=check_nr_1;
         }
         check_nr_1=check_nr_1->succ;      
      }
   }
   cout<<"the nearest point is: ";
   cout<<"("<<OUTCOME_rb_1->key<<","<<rbny_1[OUTCOME_rb_1->index].key<<")"<<endl;
   cout<<"please enter the search key"<<endl;
   shortest_rb_1=1;
   check_nr_1=rbtx_1.min; 
   cin>>pos_rb_1[0]>>pos_rb_1[1];
   //nearest neighbor search
   while(check_nr_1->key<pos_rb_1[0]){
      if(check_nr_1->dis_1_dim(pos_rb_1[0])+rbny_1[check_nr_1->index].dis_1_dim(pos_rb_1[1])<shortest_rb_1){
         shortest_rb_1=check_nr_1->dis_1_dim(pos_rb_1[0])+rbny_1[check_nr_1->index].dis_1_dim(pos_rb_1[1]);
         OUTCOME_rb_1=check_nr_1;
      }
      if(check_nr_1->succ!=0)
         check_nr_1=check_nr_1->succ;      
      else
         break;
   }
   if(check_nr_1->succ!=0){
      while(check_nr_1->dis_1_dim(pos_rb_1[0])<shortest_rb_1){
         if(check_nr_1->dis_1_dim(pos_rb_1[0])+rbny_1[check_nr_1->index].dis_1_dim(pos_rb_1[1])<shortest_rb_1){
            shortest_rb_1=check_nr_1->dis_1_dim(pos_rb_1[0])+rbny_1[check_nr_1->index].dis_1_dim(pos_rb_1[1]);
            OUTCOME_rb_1=check_nr_1;
         }
         if(check_nr_1->succ!=0)
            check_nr_1=check_nr_1->succ;
         else
            break;      
      }
   }
   cout<<"the nearest point is: ";
   cout<<"("<<OUTCOME_rb_1->key<<","<<rbny_1[OUTCOME_rb_1->index].key<<")"<<endl;


cout<<endl;
cout<<"range search of (0.3,0.3) (0.3,0.41) (0.6,0.3) (0.6,0.41) in 1M input implemented by RB Tree..."<<endl;
// 4.(b) //
// comparing the performance of differnet implementations in 1M input //

   float LD_rb_1[2]={0.3, 0.3};
   float RU_rb_1[2]={0.6, 0.41};
   Node_rb* check_1;
   list<Node_rb*> out_rb_1;
   check_1=rbtx_1.search(LD_rb_1[0]);
   while(check_1->succ->key<=RU_rb_1[0]){
      if(LD_rb_1[1]<=rbny_1[check_1->succ->index].key && rbny_1[check_1->succ->index].key<RU_rb_1[1])
         out_rb_1.push_back(check_1->succ);
      if(check_1->succ!=0)
         check_1=check_1->succ;
      else
         break;
   }
   cout<<"the number of points in the range = "<<out_rb_1.size()<<endl;
   fstream fout_rb_1;
   fout_rb_1.open("output1M_RBT.txt", ios::out);
   for (list<Node_rb*>::iterator ci = out_rb_1.begin(); ci != out_rb_1.end(); ++ci)
      fout_rb_1<<setw(8)<<setprecision(7)<<(*ci)->key<<setw(9)<<setprecision(7)<<rbny_1[(*ci)->index].key<<endl;  
   fout_rb_1.close();
   cout<<"please enter the search range (only the left-down and right-up points are required)"<<endl;
   cin>>LD_rb_1[0]>>LD_rb_1[1]>>RU_rb_1[0]>>RU_rb_1[1];
   list<Node_rb*> out_customed_rb_1;
   check_1=rbtx_1.search(LD_rb_1[0]);
   while(check_1->succ->key<=RU_rb_1[0]){
      if(LD_rb_1[1]<=rbny_1[check_1->succ->index].key && rbny_1[check_1->succ->index].key<=RU_rb_1[1])
         out_customed_rb_1.push_back(check_1->succ);
      if(check_1->succ->succ!=0)
         check_1=check_1->succ;
      else
         break;
   } 
   cout<<"number of points in the range = "<<out_customed_rb_1.size()<<endl;
   fout_rb_1.open("output1M_customed_RBT.txt", ios::out); 
   for (list<Node_rb*>::iterator ci = out_customed_rb_1.begin(); ci != out_customed_rb_1.end(); ++ci)
      fout_rb_1<<setw(8)<<setprecision(7)<<(*ci)->key<<setw(9)<<setprecision(7)<<rbny_1[(*ci)->index].key<<endl;  
   fout_rb_1.close();


cout<<endl;
cout<<"analysis of time consumed when doing nearest neighbor search by RBT with 1M input..."<<endl;
// 4.(c) //
// cost of time when performing nearest neighbor search function implemented by RBT//
   srand(time(NULL));
   float test_rb_1[100][2];
   for(int i=0; i<100; ++i){
      test_rb_1[i][0]=static_cast<float>(rand())/static_cast<float>(RAND_MAX);
      test_rb_1[i][1]=static_cast<float>(rand())/static_cast<float>(RAND_MAX);
   }
   Node_rb* OUTCOME_rb_3=NULL;
   float shortest_rb_3=1;
   clock_t tStart4 = clock();
   for(int i=0; i<100; ++i){
      shortest_rb_3=1;
      Node_rb* check_nr_3=rbtx_1.min;
      while(check_nr_3->key<test_rb_1[i][0]){
         if(check_nr_3->dis_1_dim(test_rb_1[i][0])+rbny_1[check_nr_3->index].dis_1_dim(test_rb_1[i][1])<shortest_rb_3){
            shortest_rb_3=check_nr_3->dis_1_dim(test_rb_1[i][0])+rbny_1[check_nr_3->index].dis_1_dim(test_rb_1[i][1]);
            OUTCOME_rb_3=check_nr_3;
         }
         if(check_nr_3->succ!=0)
            check_nr_3=check_nr_3->succ;
         else
            break;      
      }
      if(check_nr_3!=0){
         while(check_nr_3->dis_1_dim(test_rb_1[i][0])<shortest_rb_3){
            if(check_nr_3->dis_1_dim(test_rb_1[i][0])+rbny_1[check_nr_3->index].dis_1_dim(test_rb_1[i][1])<shortest_rb_3){
               shortest_rb_3=check_nr_3->dis_1_dim(test_rb_1[i][0])+rbny_1[check_nr_3->index].dis_1_dim(test_rb_1[i][1]);
               OUTCOME_rb_3=check_nr_3;
            }
            if(check_nr_3->succ!=0)
               check_nr_3=check_nr_3->succ;
            else
               break; 
         }        
      }
   }
   cout<<"number of operations: "<<100<<endl;
   printf("Time taken: %.2fs\n", (double)(clock() - tStart4)/CLOCKS_PER_SEC);

}

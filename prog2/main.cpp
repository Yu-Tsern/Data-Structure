#include<iostream>
#include<fstream>
#include<iomanip>
#include<stack>
#include"KDTree.h"
#include<time.h>
#include<vector>
#include<string>

using namespace std;

float min(float& a, float& b, float& c){
   float min_temp=a;
   if(b<a)
      min_temp=b;
   if(c<b)
      min_temp=c;
   return min_temp;
}


float max(float& a, float& b, float& c){
   float max_temp=a;
   if(b>a)
      max_temp=b;
   if(c>b)
      max_temp=c;
   return max_temp;
}


void cut_rectangle(vector<float>& xin_0, vector<float>& yin_0, list<float>& rectangles){
   stack<float> x_corner, y_corner;
   stack<float> prevlength;
   stack<bool> x_prevdirection;// +/- dir
   stack<bool> y_prevdirection;// +/- dir
   bool crntdirection=true;
   bool state=false;// x/y dir
   float crntlength=0;
   float temp1_x, temp2_x, temp3_x;
   float temp1_y, temp2_y, temp3_y;
   x_prevdirection.push(true);
   y_prevdirection.push(true);
   for(int i=0; i<xin_0.size(); ++i){
      if(y_corner.size()==0){
         x_corner.push(xin_0[i]);
         y_corner.push(yin_0[i]);
      }
      else{
         if(state==true){
            if((yin_0[i]-y_corner.top())>0){
               crntdirection=true;
               crntlength=yin_0[i]-y_corner.top();
            }
            else{
               crntdirection=false;
               crntlength=y_corner.top()-yin_0[i];
            }
            if(crntdirection^y_prevdirection.top()){
               while(yin_0[i]!=y_corner.top()){
                  if(prevlength.top()>crntlength){
                     temp1_y=y_corner.top();
                     y_corner.pop();
                     temp1_x=x_corner.top();
                     x_corner.pop();
                     temp2_y=y_corner.top();
                     y_corner.pop();
                     temp2_x=x_corner.top();
                     x_corner.pop();
                     rectangles.push_back(min(xin_0[i], temp1_x, temp2_x));
                     rectangles.push_back(min(yin_0[i], temp1_y, temp2_y));
                     rectangles.push_back(max(xin_0[i], temp1_x, temp2_x));
                     rectangles.push_back(max(yin_0[i], temp1_y, temp2_y));
                     x_corner.push(temp2_x);
                     y_corner.push(yin_0[i]);
                     prevlength.pop();
                     prevlength.push(prevlength.top()-crntlength);
                  }
                  else if(prevlength.top()<crntlength){
                     temp1_y=y_corner.top();
                     y_corner.pop();
                     temp1_x=x_corner.top();
                     x_corner.pop();
                     temp2_y=y_corner.top();
                     y_corner.pop();
                     temp2_x=x_corner.top();
                     x_corner.pop();
                     temp3_y=y_corner.top();
                     y_corner.pop();
                     temp3_x=x_corner.top();
                     x_corner.pop();
                     rectangles.push_back(min(temp3_x, temp1_x, temp2_x));
                     rectangles.push_back(min(temp3_y, temp1_y, temp2_y));
                     rectangles.push_back(max(temp3_x, temp1_x, temp2_x));
                     rectangles.push_back(max(temp3_y, temp1_y, temp2_y));
                     x_corner.push(xin_0[i]);
                     y_corner.push(temp3_y);
                     y_prevdirection.push(crntdirection);
                     prevlength.pop();
                     prevlength.push(crntlength-prevlength.top());
                  }  
                  else{
                     temp1_y=y_corner.top();
                     y_corner.pop();
                     temp1_x=x_corner.top();
                     x_corner.pop();
                     temp2_y=y_corner.top();
                     y_corner.pop();
                     temp2_x=x_corner.top();
                     x_corner.pop();
                     x_corner.pop();
                     y_corner.pop();
                     rectangles.push_back(min(xin_0[i], temp1_x, temp2_x));
                     rectangles.push_back(min(yin_0[i], temp1_y, temp2_y));
                     rectangles.push_back(max(xin_0[i], temp1_x, temp2_x));
                     rectangles.push_back(max(yin_0[i], temp1_y, temp2_y));
                     y_prevdirection.pop();
                     prevlength.pop();
                  }  
               }              
            }
            else{
               x_corner.push(xin_0[i]);
               y_corner.push(yin_0[i]);
               y_prevdirection.push(crntdirection);
               prevlength.push(crntlength);
            }
         }
         else{
            if((xin_0[i]-x_corner.top())>0){
               crntdirection=true;
               crntlength=xin_0[i]-x_corner.top();
            }
            else{
               crntdirection=false;
               crntlength=x_corner.top()-xin_0[i];
            }
            if(crntdirection^x_prevdirection.top()){
               while(xin_0[i]!=x_corner.top()){
                  cout<<"cut"<<endl;
                  if(prevlength.top()>crntlength){
                     temp1_y=y_corner.top();
                     y_corner.pop();
                     temp1_x=x_corner.top();
                     x_corner.pop();
                     temp2_y=y_corner.top();
                     y_corner.pop();
                     temp2_x=x_corner.top();
                     x_corner.pop();
                     rectangles.push_back(min(xin_0[i], temp1_x, temp2_x));
                     rectangles.push_back(min(yin_0[i], temp1_y, temp2_y));
                     rectangles.push_back(max(xin_0[i], temp1_x, temp2_x));
                     rectangles.push_back(max(yin_0[i], temp1_y, temp2_y));
                     x_corner.push(temp2_x);
                     y_corner.push(yin_0[i]);
                     prevlength.pop();
                     prevlength.push(prevlength.top()-crntlength);
                  }
                  else if(prevlength.top()<crntlength){
                     temp1_y=y_corner.top();
                     y_corner.pop();
                     temp1_x=x_corner.top();
                     x_corner.pop();
                     temp2_y=y_corner.top();
                     y_corner.pop();
                     temp2_x=x_corner.top();
                     x_corner.pop();
                     temp3_y=y_corner.top();
                     y_corner.pop();
                     temp3_x=x_corner.top();
                     x_corner.pop();
                     rectangles.push_back(min(temp3_x, temp1_x, temp2_x));
                     rectangles.push_back(min(temp3_y, temp1_y, temp2_y));
                     rectangles.push_back(max(temp3_x, temp1_x, temp2_x));
                     rectangles.push_back(max(temp3_y, temp1_y, temp2_y));
                     x_corner.push(xin_0[i]);
                     y_corner.push(temp3_y);
                     x_prevdirection.push(crntdirection);
                     prevlength.pop();
                     prevlength.push(crntlength-prevlength.top());
                  }
                  else{
                     temp1_y=y_corner.top();
                     y_corner.pop();
                     temp1_x=x_corner.top();
                     x_corner.pop();
                     temp2_y=y_corner.top();
                     y_corner.pop();
                     temp2_x=x_corner.top();
                     x_corner.pop();
                     y_corner.pop();
                     x_corner.pop();
                     rectangles.push_back(min(xin_0[i], temp1_x, temp2_x));
                     rectangles.push_back(min(yin_0[i], temp1_y, temp2_y));
                     rectangles.push_back(max(xin_0[i], temp1_x, temp2_x));
                     rectangles.push_back(max(yin_0[i], temp1_y, temp2_y));
                     x_prevdirection.pop();
                     prevlength.pop();
                  }
               }
            }
            else{
               x_corner.push(xin_0[i]);
               y_corner.push(yin_0[i]);
               x_prevdirection.push(crntdirection);
               prevlength.push(crntlength);
            }
         }
      }
      state=!state;     
   }
}


void parse2(string s, vector<float>& x_corner, vector<float>& y_corner){
   while(true){
      // read x
      size_t start = s.find_first_of("[0-9]");
      if (start == string::npos) break;
      size_t end = s.find_first_of(",");
      x_corner.push_back(stof(s.substr(start, end)));
      s = s.substr(end);
      // read y
      start = s.find_first_of("[0-9]");
      end = s.find_first_of(")");
      y_corner.push_back(stof(s.substr(start, end)));
      s = s.substr(end);
   }
}

int main(){


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
cout<<"input polygon1..."<<endl;
// start input polygon1.txt //
   ifstream inFile_1_1;
   inFile_1_1.open("polygon1.txt");
   string s_1_1;
   getline(inFile_1_1, s_1_1);
   size_t split_1_1;
   vector<float> x_mem_1_1, y_mem_1_1;
   list<float> rec_mem_1_1;
   vector< list<float> > rectangles_1_1;
   while(s_1_1.find_first_of("#")!=string::npos){
      split_1_1=s_1_1.find_first_of("#");
      parse2(s_1_1.substr(0, split_1_1), x_mem_1_1, y_mem_1_1);
      cut_rectangle(x_mem_1_1, y_mem_1_1, rec_mem_1_1);
      rectangles_1_1.push_back(rec_mem_1_1);
      s_1_1=s_1_1.substr(split_1_1+1);
      rec_mem_1_1.clear();
      x_mem_1_1.clear();
      y_mem_1_1.clear();
   }
   parse2(s_1_1, x_mem_1_1, y_mem_1_1);
   cut_rectangle(x_mem_1_1, y_mem_1_1, rec_mem_1_1);
   rectangles_1_1.push_back(rec_mem_1_1);
   cout<<"rectangles_1_1 size = "<<rectangles_1_1.size()<<endl;
   inFile_1_1.close();

cout<<endl;
cout<<"input polygon2..."<<endl;
// start input polygon2.txt //
   ifstream inFile_2_1;
   inFile_2_1.open("polygon2.txt");
   string s_2_1;
   getline(inFile_2_1, s_2_1);
   size_t split_2_1;
   vector<float> x_mem_2_1, y_mem_2_1;
   list<float> rec_mem_2_1;
   vector< list<float> > rectangles_2_1;
   while(s_2_1.find_first_of("#")!=string::npos){
      split_2_1=s_2_1.find_first_of("#");
      parse2(s_2_1.substr(0, split_2_1), x_mem_2_1, y_mem_2_1);
      cut_rectangle(x_mem_2_1, y_mem_2_1, rec_mem_2_1);
      rectangles_2_1.push_back(rec_mem_2_1);
      s_2_1=s_2_1.substr(split_2_1+1);
      rec_mem_2_1.clear();
      x_mem_2_1.clear();
      y_mem_2_1.clear();
   }
   parse2(s_2_1, x_mem_2_1, y_mem_2_1);
   cut_rectangle(x_mem_2_1, y_mem_2_1, rec_mem_2_1);
   rectangles_2_1.push_back(rec_mem_2_1);
   cout<<"rectangles_2_1 size = "<<rectangles_2_1.size()<<endl;
   inFile_2_1.close();

cout<<endl;
cout<<"input polygon3..."<<endl;
// start input polygon3.txt //
   ifstream inFile_3_1;
   inFile_3_1.open("polygon3.txt");
   string s_3_1;
   getline(inFile_3_1, s_3_1);
   size_t split_3_1;
   vector<float> x_mem_3_1, y_mem_3_1;
   list<float> rec_mem_3_1;
   vector< list<float> > rectangles_3_1;
   while(s_3_1.find_first_of("#")!=string::npos){
      split_3_1=s_3_1.find_first_of("#");
      parse2(s_3_1.substr(0, split_3_1), x_mem_3_1, y_mem_3_1);
      cut_rectangle(x_mem_3_1, y_mem_3_1, rec_mem_3_1);
      rectangles_3_1.push_back(rec_mem_3_1);
      s_3_1=s_3_1.substr(split_3_1+1);
      rec_mem_3_1.clear();
      x_mem_3_1.clear();
      y_mem_3_1.clear();
   }
   parse2(s_3_1, x_mem_3_1, y_mem_3_1);
   cut_rectangle(x_mem_3_1, y_mem_3_1, rec_mem_3_1);
   rectangles_3_1.push_back(rec_mem_3_1);
   cout<<"rectangles_3_1 size = "<<rectangles_3_1.size()<<endl;
   inFile_3_1.close();
   

cout<<endl;
cout<<"range search 1-1..."<<endl;
// range search 1-1//
   for(int i=0; i<k; ++i)
      node[i].Setfalse();
   list<Node*> out_1_1;
   
   float LD_1_1[2], RU_1_1[2];
   for(int i=0; i<rectangles_1_1.size(); ++i){
      for(list<float>::iterator ci = rectangles_1_1[i].begin(); ci != rectangles_1_1[i].end(); ++ci){
         LD_1_1[0]=(*ci);
         LD_1_1[1]=(*(++ci));
         RU_1_1[0]=(*(++ci));
         RU_1_1[1]=(*(++ci));
         tree.rangesearch(out_1_1, tree.root, LD_1_1, RU_1_1);
         cout<<"the number of points in the range = "<<out_1_1.size()<<endl;
         out_1_1.clear();
      }
      cout<<"end of a list of rectangles"<<endl<<endl;
   }
    
   fstream fout_inside_1_1;
   fstream fout_outside_1_1;
   fout_inside_1_1.open("inner-1-1.txt", ios::out);
   fout_outside_1_1.open("outer-1-1.txt", ios::out);
   for(int i=0; i<k; ++i){
      if(node[i].isinside==true)   
         fout_inside_1_1<<setw(8)<<setprecision(7)<<node[i].value[0]<<setw(9)<<setprecision(7)<<node[i].value[1]<<endl;  
      else
         fout_outside_1_1<<setw(8)<<setprecision(7)<<node[i].value[0]<<setw(9)<<setprecision(7)<<node[i].value[1]<<endl;  
   }
   fout_inside_1_1.close();
   fout_outside_1_1.close();


cout<<endl;
cout<<"range search 2-1..."<<endl;
// range search 2-1//
   for(int i=0; i<k; ++i)
      node[i].Setfalse();
   list<Node*> out_2_1;
   
   float LD_2_1[2], RU_2_1[2];
   for(int i=0; i<rectangles_2_1.size(); ++i){
      for(list<float>::iterator ci = rectangles_2_1[i].begin(); ci != rectangles_2_1[i].end(); ++ci){
         LD_2_1[0]=(*ci);
         LD_2_1[1]=(*(++ci));
         RU_2_1[0]=(*(++ci));
         RU_2_1[1]=(*(++ci));
         tree.rangesearch(out_2_1, tree.root, LD_2_1, RU_2_1);
         cout<<"the number of points in the range = "<<out_2_1.size()<<endl;
         out_2_1.clear();
      }
      cout<<"end of a list of rectangles"<<endl<<endl;
   }
    
   fstream fout_inside_2_1;
   fstream fout_outside_2_1;
   fout_inside_2_1.open("inner-2-1.txt", ios::out);
   fout_outside_2_1.open("outer-2-1.txt", ios::out);
   for(int i=0; i<k; ++i){
      if(node[i].isinside==true)   
         fout_inside_2_1<<setw(8)<<setprecision(7)<<node[i].value[0]<<setw(9)<<setprecision(7)<<node[i].value[1]<<endl;  
      else
         fout_outside_2_1<<setw(8)<<setprecision(7)<<node[i].value[0]<<setw(9)<<setprecision(7)<<node[i].value[1]<<endl;  
   }
   fout_inside_2_1.close();
   fout_outside_2_1.close();


cout<<endl;
cout<<"range search 3-1..."<<endl;
// range search 3-1//
   for(int i=0; i<k; ++i)
      node[i].Setfalse();
   list<Node*> out_3_1;
   
   float LD_3_1[2], RU_3_1[2];
   for(int i=0; i<rectangles_3_1.size(); ++i){
      for(list<float>::iterator ci = rectangles_3_1[i].begin(); ci != rectangles_3_1[i].end(); ++ci){
         LD_3_1[0]=(*ci);
         LD_3_1[1]=(*(++ci));
         RU_3_1[0]=(*(++ci));
         RU_3_1[1]=(*(++ci));
         tree.rangesearch(out_3_1, tree.root, LD_3_1, RU_3_1);
         cout<<"the number of points in the range = "<<out_3_1.size()<<endl;
         out_3_1.clear();
      }
      cout<<"end of a list of rectangles"<<endl<<endl;
   }
    
   fstream fout_inside_3_1;
   fstream fout_outside_3_1;
   fout_inside_3_1.open("inner-3-1.txt", ios::out);
   fout_outside_3_1.open("outer-3-1.txt", ios::out);
   for(int i=0; i<k; ++i){
      if(node[i].isinside==true)   
         fout_inside_3_1<<setw(8)<<setprecision(7)<<node[i].value[0]<<setw(9)<<setprecision(7)<<node[i].value[1]<<endl;  
      else
         fout_outside_3_1<<setw(8)<<setprecision(7)<<node[i].value[0]<<setw(9)<<setprecision(7)<<node[i].value[1]<<endl;  
   }
   fout_inside_3_1.close();
   fout_outside_3_1.close();


cout<<endl;
cout<<"range search 1-2..."<<endl;
// range search 1-2//
   for(int i=0; i<k_1; ++i)
      node_1[i].Setfalse();
   list<Node*> out_1_2;
   
   float LD_1_2[2], RU_1_2[2];
   for(int i=0; i<rectangles_1_1.size(); ++i){
      for(list<float>::iterator ci = rectangles_1_1[i].begin(); ci != rectangles_1_1[i].end(); ++ci){
         LD_1_2[0]=(*ci);
         LD_1_2[1]=(*(++ci));
         RU_1_2[0]=(*(++ci));
         RU_1_2[1]=(*(++ci));
         tree_1.rangesearch(out_1_2, tree_1.root, LD_1_2, RU_1_2);
         cout<<"the number of points in the range = "<<out_1_2.size()<<endl;
         out_1_2.clear();
      }
      cout<<"end of a list of rectangles"<<endl<<endl;
   }
    
   fstream fout_inside_1_2;
   fstream fout_outside_1_2;
   fout_inside_1_2.open("inner-1-2.txt", ios::out);
   fout_outside_1_2.open("outer-1-2.txt", ios::out);
   for(int i=0; i<k_1; ++i){
      if(node_1[i].isinside==true)   
         fout_inside_1_2<<setw(8)<<setprecision(7)<<node_1[i].value[0]<<setw(9)<<setprecision(7)<<node_1[i].value[1]<<endl;  
      else
         fout_outside_1_2<<setw(8)<<setprecision(7)<<node_1[i].value[0]<<setw(9)<<setprecision(7)<<node_1[i].value[1]<<endl;  
   }
   fout_inside_1_2.close();
   fout_outside_1_2.close();


cout<<endl;
cout<<"range search 2-2..."<<endl;
// range search 2-1//
   for(int i=0; i<k_1; ++i)
      node_1[i].Setfalse();
   list<Node*> out_2_2;
   
   float LD_2_2[2], RU_2_2[2];
   for(int i=0; i<rectangles_2_1.size(); ++i){
      for(list<float>::iterator ci = rectangles_2_1[i].begin(); ci != rectangles_2_1[i].end(); ++ci){
         LD_2_2[0]=(*ci);
         LD_2_2[1]=(*(++ci));
         RU_2_2[0]=(*(++ci));
         RU_2_2[1]=(*(++ci));
         tree_1.rangesearch(out_2_2, tree_1.root, LD_2_2, RU_2_2);
         cout<<"the number of points in the range = "<<out_2_2.size()<<endl;
         out_2_2.clear();
      }
      cout<<"end of a list of rectangles"<<endl<<endl;
   }
    
   fstream fout_inside_2_2;
   fstream fout_outside_2_2;
   fout_inside_2_2.open("inner-2-2.txt", ios::out);
   fout_outside_2_2.open("outer-2-2.txt", ios::out);
   for(int i=0; i<k_1; ++i){
      if(node_1[i].isinside==true)   
         fout_inside_2_2<<setw(8)<<setprecision(7)<<node_1[i].value[0]<<setw(9)<<setprecision(7)<<node_1[i].value[1]<<endl;  
      else
         fout_outside_2_2<<setw(8)<<setprecision(7)<<node_1[i].value[0]<<setw(9)<<setprecision(7)<<node_1[i].value[1]<<endl;  
   }
   fout_inside_2_2.close();
   fout_outside_2_2.close();


cout<<endl;
cout<<"range search 3-2..."<<endl;
// range search 3-2//
   for(int i=0; i<k_1; ++i)
      node_1[i].Setfalse();
   list<Node*> out_3_2;
   
   float LD_3_2[2], RU_3_2[2];
   for(int i=0; i<rectangles_3_1.size(); ++i){
      for(list<float>::iterator ci = rectangles_3_1[i].begin(); ci != rectangles_3_1[i].end(); ++ci){
         LD_3_2[0]=(*ci);
         LD_3_2[1]=(*(++ci));
         RU_3_2[0]=(*(++ci));
         RU_3_2[1]=(*(++ci));
         tree_1.rangesearch(out_3_2, tree_1.root, LD_3_2, RU_3_2);
         cout<<"the number of points in the range = "<<out_3_2.size()<<endl;
         out_3_2.clear();
      }
      cout<<"end of a list of rectangles"<<endl<<endl;
   }
    
   fstream fout_inside_3_2;
   fstream fout_outside_3_2;
   fout_inside_3_2.open("inner-3-2.txt", ios::out);
   fout_outside_3_2.open("outer-3-2.txt", ios::out);
   for(int i=0; i<k_1; ++i){
      if(node_1[i].isinside==true)   
         fout_inside_3_2<<setw(8)<<setprecision(7)<<node_1[i].value[0]<<setw(9)<<setprecision(7)<<node_1[i].value[1]<<endl;  
      else
         fout_outside_3_2<<setw(8)<<setprecision(7)<<node_1[i].value[0]<<setw(9)<<setprecision(7)<<node_1[i].value[1]<<endl;  
   }
   fout_inside_3_2.close();
   fout_outside_3_2.close();


}


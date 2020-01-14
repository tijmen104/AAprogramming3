function [ w ] = Graph_to_w(txt_file_name)
Graph = importdata(txt_file_name);
w=zeros(Graph(1),Graph(1));

for c=2:3:size(Graph,1)
    w(Graph(c)+1,Graph(c+1)+1)=Graph(c+2);
    w(Graph(c+1)+1,Graph(c)+1)=Graph(c+2);
end
end

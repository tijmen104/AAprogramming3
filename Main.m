maxWeight = 15;
maxId = 10;
nodes = [2,5,7,10,15,20,30,40,60,70];
p=[05,10];
graphnames =zeros(3001,1);
index = 1;
MSol = zeros(3001,1);
MApprox = zeros(3001,1);
for w=0:maxWeight-1
    for id=0:maxId-1
        for n=1:size(nodes,2)
            for pIndex=1:2
                nodeString = strcat(int2str(nodes(n)),'_');
                if pIndex==1
                    pString = strcat('0',int2str(p(pIndex)),'_');
                else 
          
                    pString = strcat(int2str(p(pIndex)),'_');
                end
                
                wString = strcat(int2str(w),'_instance_0');
                idString = int2str(id);
                
                graphFileName = strcat('./Graphs/maxcut_',nodeString,pString,wString,idString);
                [solution, approx] = MaxCutFunc(graphFileName);
                graphnames(index) = graphFileName;
              
                MSol(index,:)= solution;
                MApprox(index,:)=approx;
                
                index=index+1;

            end
        end
    end
end
writematrix(graphnames,'./Results/graphnames.xls');
writematrix(MSol,'./Results/solution.xls');
writematrix(MApprox,'./Results/approx.xls');

%         for(int weight=0;weight<maxWeight;weight++){
%             for(int id =0;id<maxId;id++){
%                 for(int n =0;n<nodes.length;n++){
%                     for(int pIndex =0;pIndex<p.length;pIndex++){
maxWeight = 15;
maxId = 10;
nodes = [2,5,7,10,15,20,30,40,60,70];
p=[05,10];

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
                
            end
        end
    end
end

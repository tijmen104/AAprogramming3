public class CreateGraphFiles {

    public static void main(String[] args){
        int maxWeight = 15;
        int maxId = 10;
        int[] nodes = new int[]{2,5,7,10,15,20,30,40,60,70};
        double[] p = new double[]{0.5,1};
        String[] input =new String[4];
        for(int weight=0;weight<maxWeight;weight++){
            for(int id =0;id<maxId;id++){
                for(int n =0;n<nodes.length;n++){
                    for(int pIndex =0;pIndex<p.length;pIndex++){
                        input[0]=Integer.toString(nodes[n]);
                        input[1]=Double.toString(p[pIndex]);
                        input[2]=Integer.toString(weight);
                        input[3]=Integer.toString(id);
                        GraphGenerator.main(input);
                    }
                }
            }
        }
    }
}

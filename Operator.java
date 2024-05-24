public class Operator{
    public static void main(String[] args){
        int x = 0, y = 0, z = 0;
        y = x++;
        z = --x;
        System.err.println(x + "," + y + "," + z);
    }
}
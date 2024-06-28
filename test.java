public class test {
        public static void main(String[] args) {
            printName("Greg", 30);

            testCat Cat1 = new testCat("billy", 12, "white");
            testCat Cat2 = new testCat("adolf", 7, "white and brown");
            testCat Cat3 = new testCat("beggar", 4, "white and black");
            testCat Cat4 = new testCat("muppet", 11, "white");
            
            System.out.println(Cat1.name + Cat1.age + Cat1.colour);    
            
        }

        private static void printName (String name, int age){
            System.out.println("My name is " + name + " and i am " + age + " years old");
            if (name == "Gareth") { System.out.print("This guy is awesome!");}
            else if (name == "Apprille") {System.out.println("This girl is amazing");}
            else System.out.println("who the heck is this?");
        }
}
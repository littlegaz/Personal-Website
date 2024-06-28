import java.util.Random;
import java.util.Scanner;

public class NumberGuessingGame {

    public static void main(String[] args) {

        Random rand = new Random();
        Scanner scanner = new Scanner(System.in);

        int randomNumber = rand.nextInt(1000) + 1;
        // System.out.println(randomNumber);
        int tryCount = 0;

        while(true){
        System.out.println("Enter your guess between 1 - 1000");

        int playerGuess = scanner.nextInt();
        tryCount++;

        if (playerGuess == randomNumber){
            System.out.println("Correct! You Win!");
            System.out.println("It took you " + tryCount + " attempts!");
            break;
        }
        else if (randomNumber < playerGuess){
            System.out.println("You are too high");
        }
        else {
            System.out.println("you are too low");
        }
    }

            scanner.close();
    }
    
}

import java.util.Random;
import java.util.Scanner;

public class RockPaperScissors {
    public static void main(String[] args) {

        String[] rps = {"r", "p", "s" };
        String computerMove = rps[new Random().nextInt(rps.length)];

        Scanner scanner = new Scanner(System.in);
        String playerMove;
        
        while(true) {
        System.out.println("Please enter your move (r, p, s)");
        playerMove = scanner.nextLine();
        if (playerMove.equals("r") || playerMove.equals("p") || playerMove.equals("s")) {
            break;}
        else System.out.println(playerMove + " is not a valid move. Enter a valid move!");
        }

        scanner.close();

        System.out.println("Computer played: " + computerMove);
        
        if (playerMove.equals(computerMove)) {System.out.println("Its a tie!");}
        else if (playerMove.equals("r") && computerMove.equals("s")){System.out.println("Player Wins!");}
        else if (playerMove.equals("p") && computerMove.equals("r")){System.out.println("Player Wins!");}
        else if (playerMove.equals("s") && computerMove.equals("p")){System.out.println("Player Wins!");}
        else System.out.println("Computer Wins!");

    }
}

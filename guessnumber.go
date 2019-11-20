package main

import (
	"fmt"
	"math/rand"
	"time"
)
//main
func main() {
	var guess, number int
	rand.Seed(time.Now().UnixNano())
	number = 1 + rand.Intn(10)
	fmt.Print("Guess a number between 1 and 10: ")
	fmt.Scanf("%d", &guess)
	if number == guess {
		fmt.Println("You guessed correctly.")
	} else {
		fmt.Println("You guessed incorrectly.")
		fmt.Printf("The number was %d.\n", number)
	}
}

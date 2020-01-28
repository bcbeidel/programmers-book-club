package main

import (
	"fmt"
	"sort"
	"strconv"
)

func main() {
	slice := make([]int, 0, 3)
	for {
		var input string

		fmt.Print("\nPlease input an integer or type 'X' for exit:")
		fmt.Scan(&input)

		if input == "X" || input == "x" {
			break
		}

		num, err := strconv.Atoi(input)

		if err != nil {
			fmt.Println("\nWrong number")
			continue
		}

		slice = append(slice, num)
		sort.Ints(slice)
		fmt.Println(slice)
	}
}

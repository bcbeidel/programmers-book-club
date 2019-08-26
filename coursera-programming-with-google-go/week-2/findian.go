// findian.go
// Brandon Beidel 21-04-2019
package main

import (
	"fmt"
	s "strings"
)

func main() {
	var userString string
	fmt.Println("Enter a string: ")
	fmt.Scan(&userString)
	userString = s.ToLower(userString)
	userString = s.TrimSpace(userString)

	if s.HasPrefix(userString, "i") && s.Contains(userString, "a") && s.HasSuffix(userString, "n") {
		fmt.Println("Found!")
	} else {
		fmt.Println("Not Found!")
	}
}

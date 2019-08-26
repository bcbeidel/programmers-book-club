package main

import "fmt"

func main() {
	fmt.Println("Enter a floating point number please")
	var floatNumber float64
	_, err := fmt.Scan(&floatNumber)
	if err != nil {
		fmt.Println("Error scanning the floating point number")
	}
	intNumber := int(floatNumber)
	fmt.Println(intNumber)
}

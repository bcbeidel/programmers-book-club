package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

type Person struct {
	fname string
	lname string
}

func main() {

	// make en extensible array of Persons
	s := make([]Person, 0, 0)

	// create a reader to use
	reader := bufio.NewReader(os.Stdin)

	// Get full path to filename
	fmt.Println("Enter file name: ")
	fileName, err := reader.ReadString('\n')
	fileName = strings.Trim(fileName, " \n")

	file, err := os.Open(fileName)

	if err != nil {
		fmt.Println("Error reading file.")
		return
	}

	// https://golang.org/pkg/bufio/#Scanner
	// Use scanner to read one line at a time
	scanner := bufio.NewScanner(file)

	for scanner.Scan() {
		// Get the next line of text
		line := scanner.Text()

		components := strings.Split(line, " ")
		p := Person{
			fname: components[0],
			lname: components[1],
		}
		s = append(s, p)
	}

	for _, p := range s {
		fmt.Printf("%s %s\n", string(p.fname[:]), string(p.lname[:]))
	}
}

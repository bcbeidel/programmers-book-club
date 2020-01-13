package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"os"
	"strings"
)

func main() {
	m := make(map[string]string)
	reader := bufio.NewReader(os.Stdin)

	fmt.Println("Enter name: ")
	name, err := reader.ReadString('\n')

	if err != nil {
		fmt.Println("Please enter correct input.")
		return
	}

	fmt.Println("Enter address: ")
	address, err := reader.ReadString('\n')

	if err != nil {
		fmt.Println("Please enter correct input.")
		return
	}

	m["name"] = strings.Trim(name, " \n")
	m["address"] = strings.Trim(address, " \n")

	jsonString, err := json.MarshalIndent(m, "", "\t")

	if err != nil {
		fmt.Println(err)
	}

	fmt.Printf("\n%s\n", jsonString)
}

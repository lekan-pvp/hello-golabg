package main

import "fmt"

var version = "dev"

func main() {
	fmt.Printf("Версия: %s\n", version)
	fmt.Println(hello())
}

func hello() string {
	return "Hello golang"
}

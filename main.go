package main

import (
	"bufio"
	"fmt"
	"io/ioutil"
	"log"
	"os"

	"github.com/kvannotten/mailstrip"
)

func main() {
	b, err := ioutil.ReadAll(bufio.NewReader(os.Stdin))
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(mailstrip.Parse(string(b)).String())
}

package main

import "net/http"

func main() {
	http.Handle("/", http.FileServer(http.Dir(".")))
	err := http.ListenAndServe(":3000", nil)

	if err != nil {
		panic(err)
	}
}

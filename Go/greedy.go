package main

import "fmt"
import "container/list"

type Activity struct {
	id string
	lat float64
	lon float64
}

type Resource struct {
	id string
	lat float64
	lon float64
}

type Allocation struct {
	rid string
	aid string
	dist float64
}

type SchemaData struct {
	activity = [] 
	resource = [] 
	allocation = [] 
}

func main() {
    fmt.Printf("hello, world\n")
}

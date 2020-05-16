package main

import (
	"fmt"
	"time"
)

var arr = []int32{1, 1, 1, 2, 3, 4, 5, 5, 5, 6, 6}

func main() {
	start := time.Now()

	result := countEl(arr)

	elapsed := time.Since(start)
	fmt.Println(result, "Time:", elapsed)
}

type Res map[int32]int32
func countEl(arr []int32) Res {
	res := make(Res)

	for _, val := range arr {
		if res[val] != 0 {
			res[val] = res[val] + 1
		} else {
			res[val] = 1
		}
	}

	return res
}

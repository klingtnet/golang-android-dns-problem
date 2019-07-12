package main

import (
	"log"
	"net/http"
)

func main() {
	req, err := http.NewRequest("HEAD", "https://golang.org", nil)
	if err != nil {
		log.Fatalf("failed to build request: %s", err)
	}
	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		log.Fatalf("failed to send request: %s", err)
	}
	log.Printf("status-code: %d/%s", resp.StatusCode, resp.Status)
}

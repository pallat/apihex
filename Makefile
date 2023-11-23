.PHONY: api

api:
	go run main.go
alot:
	go run cmd/alot/main.go

pid := $(shell lsof -ti:8080)
sigterm:
	kill -SIGTERM $(pid)
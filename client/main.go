package main

import (
	"context"
	"log"
	"net/http"

	"buf.build/gen/go/bwebster/orderapis/connectrpc/go/orders/v1/ordersv1connect"
	orderv1 "buf.build/gen/go/bwebster/orderapis/protocolbuffers/go/orders/v1"
	"connectrpc.com/connect"
)

func main() {
	client := ordersv1connect.NewOrderServiceClient(
		http.DefaultClient,
		"http://localhost:8080",
	)
	res, err := client.GetOrder(
		context.Background(),
		connect.NewRequest(&orderv1.GetOrderRequest{
			OrderId: "abc123",
		}),
	)
	if err != nil {
		log.Fatalf("Error getting order: %v\n", err)
	}
	log.Printf("Got order %+v\n", res.Msg)
}

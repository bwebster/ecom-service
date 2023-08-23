module github.com/bwebster/ecom-service

go 1.19

require (
	buf.build/gen/go/bwebster/orderapis/connectrpc/go v1.11.0-20230823213743-cdf659a01ed6.1
	buf.build/gen/go/bwebster/orderapis/protocolbuffers/go v1.31.0-20230823213743-cdf659a01ed6.1
	connectrpc.com/connect v1.11.0
)

require (
	google.golang.org/genproto v0.0.0-20230822172742-b8732ec3820d // indirect
	google.golang.org/protobuf v1.31.0 // indirect
)

module github.com/bwebster/ecom-service

go 1.19

require (
	buf.build/gen/go/bwebster/orderapis/connectrpc/go v1.11.0-20230824122048-59a7513b790e.1
	buf.build/gen/go/bwebster/orderapis/protocolbuffers/go v1.31.0-20230824122048-59a7513b790e.1
	connectrpc.com/connect v1.11.0
)

require google.golang.org/protobuf v1.31.0 // indirect

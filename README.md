# go-gRPC-com-Protobuf-StreamClientServer


docker build -t jjnatanx/ubuntu-go-aluno .\

docker run -it -v /home/jonathan/ubuntu-go-aluno:/home/ubuntu-go-aluno -p 80:50051 --rm --name ubuntu-go-aluno jjnatanx/ubuntu-go-aluno\

# =========================================================

go mod init github.com/jdoliveirasa/fc2-grpc\

go get google.golang.org/protobuf/cmd/protoc-gen-go google.golang.org/grpc/cmd/protoc-gen-go-grpc\

go install google.golang.org/protobuf/cmd/protoc-gen-go\
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc\

export PATH="$PATH:$(go env GOPATH)/bin"\

protoc --proto_path=proto proto/*.proto --go_out=pb --go-grpc_out=pb\

# =========================================================

go get google.golang.org/grpc\

go get github.com/ktr0731/evans\

go run cmd/server/server.go\

go run cmd/client/client.go\

# =========================================================

docker exec -it ubuntu-go-aluno bash\

evans -r repl --host localhost --port 50051\
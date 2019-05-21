# Usage

> project must use go mod, The version of go is at least 1.11

1. Clone the dockerfile to local  
`git clone git@github.com:whimthen/gogcc.git`

2. Use docker build image  
`docker build - < Dockerfile -t gogcc:v1`

3. Run build go files  
`docker run --rm -v "$PWD":/myrepo -w /myrepo gogcc:v1 go build`

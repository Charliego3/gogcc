# Usage

1. cloen the dockerfile to local  
`git clone git@github.com:whimthen/gogcc.git`

2. use docker command build image  
`docker build - < Dockerfile -t gogcc:v1`

3. Run build go files  
`docker run --rm -v "$PWD":/myrepo -w /myrepo gogcc:v1 go build`

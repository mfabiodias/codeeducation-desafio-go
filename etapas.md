1. Criei um arquivo similar ao Hello Word do GoLang

   - Ref.: https://gobyexample.com/hello-world

   ```GO
   package main

   import "fmt"

   func main() {
   fmt.Println("Code.education Rocks!")
   }
   ```

2. Criei um Dockerfile com a ideia de Multi Building e como o GoLang é compilado, usei uma imagem do Scratch das camadas mais baixas dos containers para atingir o objetivo de gerar um executavel com até 2MB.

   - No primeiro build copio para o container o script e gero seu binário
   - No segundo apenas executo o binário

   ```Dockerfile
    FROM golang as builder
    WORKDIR /app
    COPY desafio/ /app
    RUN go build desafio1.go

    FROM scratch
    WORKDIR /app
    COPY --from=builder /app .
    CMD ["./desafio1"]
   ```

3. Gerei o build

   - docker build -t mfabiodias/codeeducation .

4. Executei a imagem

   - docker run mfabiodias/codeeducation

5. Fiz o push para o DockerHub

   - docker push mfabiodias/codeeducation

6. Fiz o push para o GitHub

   -

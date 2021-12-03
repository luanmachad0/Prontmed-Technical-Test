# Prontmed - Teste Backend

Esse é o teste da Prontmed para desenvolvedor Backend. Ao fazer o teste, pense nele como seu cartão de visita, portanto entregue o trabalho que você espere que seja visto pelos outros.

## Objetivo

Deverá ser desenvolvida um backend ASP.NET Core contendo as rotas que farão o frontend (aqui incluido também) funcionar.

## Requisitos

- Ser desenvolvido em .NET 6
- Deve responder na porta 7000
- Deve implementar as definições presentes no Swagger ```test-backend.yaml```
- Deve aceitar requests de: ``` http://localhost:3000``` sem "sofrer" com [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS)
- Ter uma documentação Swagger gerada automaticamente
- O backend deverá ter uma conexão com banco de dados SQL (PostgreSQL), devendo persistir os objetos de TODOs no mesmo.
- As dependencias (banco de dados por exemplo) devem subir no docker, utilizando [docker-compose](https://docs.docker.com/compose/gettingstarted/#step-3-define-services-in-a-compose-file)
- O frontend fornecido deve funcionar com a backend desenvolvida nesse teste

## Executando o projeto Frontend

```bash
docker-compose up -d
```

## Visualizando o arquivo swagger do teste

```bash
docker-compose up -d
```
Depois acesse: http://localhost:8082

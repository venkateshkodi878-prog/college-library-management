# College Library Management - Simple Spring Boot Project

## Features
- Add book
- View all books
- View book by ID
- Update book
- Delete book
- MySQL database
- Docker deployment

## Run with Docker
```bash
docker compose up --build
```

## API Endpoints
- GET /api/books
- GET /api/books/{id}
- POST /api/books
- PUT /api/books/{id}
- DELETE /api/books/{id}

## Sample JSON
```json
{
  "title": "Operating Systems",
  "author": "Galvin",
  "isbn": "9781118063330",
  "quantity": 7
}
```

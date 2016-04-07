#!/bin/bash

curl --include --request POST http://localhost:3000/products \
  --header "Authorization: Token token=BAhJIiUxODZkNTYzYWRmNzIwYWYxZmFlYjlhOWM0NjAzYjY2NgY6BkVG--a8a6a97fdbe057804e49a76933d7532904c59b68" \
  --header "Content-Type: application/json" \
  --data '{
    "product": {
      "name": "GA",
      "price": "13000"
    }
  }'

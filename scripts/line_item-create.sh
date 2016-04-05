#!/bin/bash

curl --include --request POST http://localhost:3000/line_items \
  --header "Authorization: Token token=BAhJIiVjMDdhNWY5NTgwODRkNjM4MjBhMDY2NWMwNGY2MmI0OQY6BkVG--e02720f04768f63681dfd881d502c538272b7f35" \
  --header "Content-Type: application/json" \
  --data '{
    "product": {
      "order_id": "1",
      "product_id": "1"
    }
  }'

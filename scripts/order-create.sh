#!/bin/bash

curl --include --request POST http://localhost:3000/orders \
  --header "Authorization: Token token=BAhJIiUyZTIzMTc1MTYxNzk3YTc0NjQ1MWMxMDk1ZGJiYjhiZAY6BkVG--b98a0bf464953379d756fb5f71a277c9412ac54a" \
  --header "Content-Type: application/json" \
  --data '{
    "order": {
      "customer": "Ernie"
    }
  }'

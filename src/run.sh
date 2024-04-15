#!/bin/bash

# Prompt the user to enter their GitHub username
read -p "Enter your GitHub username: " username

page=1
total=0
while : ; do
  response=$(curl -s "https://api.github.com/users/$username/repos?page=$page&per_page=100")

  # Count the number of repositories in the current page
  count=$(echo "$response" | jq -r '. | length')

  # Add the count to the total
  total=$((total + count))

  # Check if the response is empty, indicating we've reached the last page
  if [ "$count" -eq 0 ]; then
    break
  fi

  ((page++))
done

echo "Total repositories: $total"
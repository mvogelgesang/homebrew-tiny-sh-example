#!/bin/bash

# Prompt the user to enter their GitHub username
read -p "Enter your GitHub username: " username

# Fetch the list of repositories for the given user
response=$(curl -s "https://api.github.com/users/$username/repos")

# Parse the JSON response with jq and print the total number of repositories
echo "$response" | jq 'length'
#!/bin/bash

# Set your OpenAI API key
export OPENAI_API_KEY="Your OPENAI API KEY"

# Set the model to use (e.g. "gpt-3.5-turbo-0301") - this is the cheapest model
MODEL="gpt-3.5-turbo-0301"

# Set the prompt to use as input for the language model
PROMPT="$1"

# Set the number of tokens to generate
TOKEN_COUNT=500

# Set the temperature
TEMPERATURE=0.0

# Set the top_p value
TOP_P=1

# Set the frequency
FREQUENCY=0.5

# Set the presence
PRESENCE=0.5

# Generate text using the language model
OUTPUT=$(curl -sk -X POST -H "Authorization: Bearer $OPENAI_API_KEY" -H "Content-Type: application/json" -d "{\"model\":\"$MODEL\",\"messages\":[{\"role\":\"user\",\"content\":\"$PROMPT\"}],\"temperature\":$TEMPERATURE,\"top_p\":$TOP_P,\"frequency_penalty\":$FREQUENCY,\"presence_penalty\":$PRESENCE,\"max_tokens\":$TOKEN_COUNT}" https://api.openai.com/v1/chat/completions)

# Extract the text from the response
OUTPUT=$(echo "$OUTPUT" | jq -r '.choices[0].message.content')

# Print the output
echo "$OUTPUT"

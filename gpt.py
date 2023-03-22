#!/usr/bin/env python3

import sys
import json
import requests
from getpass import getpass
import os

# Set your OpenAI API key
OPENAI_API_KEY = 'YOUR_OPENAI_API_KEY'

# Set the model to use (e.g. "gpt-3.5-turbo-0301") - this is the cheapest model
MODEL = "gpt-3.5-turbo-0301"

# Set the prompt to use as input for the language model
PROMPT = sys.argv[1]

# Set the number of tokens to generate
TOKEN_COUNT = 500

# Set the temperature
TEMPERATURE = 0.0

# Set the top_p value
TOP_P = 1

# Set the frequency
FREQUENCY = 0.5

# Set the presence
PRESENCE = 0.5

# Generate text using the language model
headers = {
    "Authorization": f"Bearer {OPENAI_API_KEY}",
    "Content-Type": "application/json",
}
data = {
    "model": MODEL,
    "messages": [{"role": "user", "content": PROMPT}],
    "temperature": TEMPERATURE,
    "top_p": TOP_P,
    "frequency_penalty": FREQUENCY,
    "presence_penalty": PRESENCE,
    "max_tokens": TOKEN_COUNT,
}

response = requests.post("https://api.openai.com/v1/chat/completions", headers=headers, json=data)

output = response.json()["choices"][0]["message"]["content"]
print(output)

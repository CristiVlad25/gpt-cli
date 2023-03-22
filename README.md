![Untitled](https://user-images.githubusercontent.com/17044663/211204519-feaa9464-d8f3-495c-b61c-5eb7532f67b9.png)

# gpt-cli
Access GPT3, ChatGPT, and GPT4 straight from your terminal.

### How to use:

1. Create a new file in the root folder or in other location: `nano /root/gpt.sh`.
2. Paste the code from either `*.sh` files and make sure to edit line #4 to reflect your OPENAI API Key. Save.
3. `chmod +x gpt.sh`.
4. For convenience of access, add an alias to `/.bashrc` located in `/root`, such as: `alias gpt=/root/gpt.sh`.
5. Use: `gpt <Your prompt>`.

Note: I've hardcoded some of the parameters (temperature, presence penalty, frequency penalty, max token, top_p) for convenience. In the future, if there is interest, I might develop this further.

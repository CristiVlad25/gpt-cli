# gpt3cli
Access GPT3 straight from the terminal.

### How to use:

1. Create a new file in the root folder or in other location: `nano /root/gtp3.sh`
2. Paste the code from `gpt3.sh` and make sure to edit line #4 to reflect your OPENAI API Key. Save.
3. `chmod +x gpt3.sh`
4. For conveniece of access, add an alias to `/.bashrc` located in `/root`, such as: `alias gpt3=/root/gpt3.sh`. Add this line to the `~/.bashrc` file
5. Use: `gpt3 <Your prompt>`.

Note: I've hardcoded some of the parameters (temperature, presence penalty, frequence penalty, max token, top_p) for conveniece. In the future, if there is interest, I might develop this further.

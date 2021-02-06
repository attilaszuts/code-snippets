# This is my collection of useful functions and code snippets, feel free to use them and contribute to it.

## Discord webhook function.

I've had enough of constantly checking RStudio to see if my ML model has finished training. So I created a function that sends a notification to a Discord channel through a webhook and pinging a user. 

To be able to use it, you need to:
1. Change the webhook URL to a channel that you have access to (either on Slack or on Discord or another service)
2. Join my discord channel, ask for an invite and I'll send it to you.
3. Add a user-ID, so that it will ping you.

You need to reflect these changes in the `creds.txt` file.

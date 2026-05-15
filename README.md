# OverTheWire Bandit Game


## Introduction

OverTheWire Bandit is a Linux-based wargame centered on command-line mastery and technical problem-solving. It challenges users to navigate a live server environment to retrieve hidden passwords, with each level introducing increasingly complex concepts in filesystem architecture, data manipulation, and network security.


##

This repository covers my journey through the first 20 levels. Each directory contains the commands used to retrieve the password and a brief explanation of the logic.

Levels 1-10: Focus on ls, cd, cat, and finding hidden files or files with specific properties (size, user, group).

Levels 11-20: Focus on data transformation (ROT13, Base64), using grep to filter text, and interacting with network ports.


## 🚀 Getting Started
To connect to the game, use SSH on port 2220:

```bash
ssh banditX@bandit.labs.overthewire.org -p 2220
```
(Replace X with the current level number)

and follow the level instructions at: 
https://overthewire.org/wargames/bandit/bandit0.html


## 💡 Learning Highlights

#### 1. The Power of Pipe (|)
One of the biggest "aha!" moments was learning to chain commands. Instead of running one command at a time, I can send the output of one into the input of another.
Example: Reading a file and decoding it immediately.

```bash
cat data.txt | base64 -d
```

#### 2. Finding the Needle in the Haystack
The `find` command is incredibly powerful for security. Learning to search by file size `(-size)` or by specific permissions was essential for levels where the password was hidden among thousands of files.

#### 3. Understanding Encoding
I learned that just because data looks like gibberish doesn't mean it's encrypted. Base64 is a common way to represent binary data as text. It’s easily reversible with the `-d` (decode) flag.
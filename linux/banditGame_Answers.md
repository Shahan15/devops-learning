
ssh bandit0@bandit.labs.overthewire.org -p 2220

## Bandit level 0 -> 1
#### Solution:
```bash
cat readme
```
**Password**: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If

## Bandit Level 1 -> 2
#### Challenge: The password for the next level is stored in a file called - located in the home directory

#### Solution:
```bash
cat ./-
```
**Password**: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If

## Bandit level 2 -> 3
#### Challenge: The password for the next level is stored in a file called --spaces in this filename-- located in the home directory

#### Solution: 
```bash
cat "./--spaces in this filename--"
```

**Password**: MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx


## Bandit level 3 -> 4
#### Challenge: The password for the next level is stored in a hidden file in the inhere directory.

#### Solution: 
```bash
cd inhere 
ls -a #lists hidden files/directories
cat ...Hiding-From-You
```

**Password**:2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ


## Bandit level 4 -> 5
#### Challenge: The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is messed up, try the “reset” command.

#### Solution: 
```bash
file ./* #this lists all File types. (*) indicates all 
```
```plaintext
./-file05: data
./-file06: data
./-file07: ASCII text
./-file08: data
```
```bash
cat ./-file07
```

**Password**:4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw

## Bandit level 5 -> 6
#### Challenge: The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties: human-readable, 1033 bytes in size, not executable

#### Solution: 
```bash
cd inhere
ls
```
```plaintext
maybehere00  maybehere03  maybehere06  maybehere09  maybehere12  maybehere15  maybehere18  maybehere01  maybehere04  maybehere07  maybehere10  maybehere13  maybehere16  maybehere19  maybehere02  maybehere05  maybehere08  maybehere11  maybehere14  maybehere17
```
```bash
find . -type f -size 1033c -exec file {} + | grep 'text'
cat ./maybehere07/.file2
```

#### Notes: 
`exec` - executes command on the output of `find . -type f -size 1033c`. i.e check the file type of each output, with {} being the placeholder for each output. 

`grep` would run the grep command on the output of whatever is before it. 

**Password**: HWasnPhtq9AVKe0dmk45nxy20cvUa6EG


## Bandit level 6 -> 7
#### Challenge: The password for the next level is stored somewhere on the server and has all of the following properties:owned by user bandit7, owned by group bandit6, 33 bytes in size

#### Solution: 
```bash
find / -type f -size 33c -user bandit7 -group bandit6
```
```plaintext
find: ‘/var/crash’: Permission denied
/var/lib/dpkg/info/bandit7.password
find: ‘/var/lib/udisks2’: Permission denied
find: ‘/var/lib/snapd/void’: Permission denied
find: ‘/var/lib/snapd/cookie’: Permission denied
find: ‘/var/lib/polkit-1’: Permission denied
find: ‘/var/lib/private’: Permission denied
```
```bash
find / -type f -size 33c -user bandit7 -group bandit6 2>/dev/null
cat  cat /var/lib/dpkg/info/bandit7.password
```

#### Notes: 
we get loads of permission denied. which is an error message which we can redirect (remember standard error stream) into dev/null as we dont need it. so we narrow it down to the password

**Password**: morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj


## Bandit level 7 -> 8
#### Challenge: The password for the next level is stored in the file data.txt next to the word millionth

#### Solution: 
```bash
cat data.txt
```

```plaintext
cellar's        C950ibpwKwzDxLZsN0h3dFfbivLkTr6o
droplet's       OJG7nPMy9oEDQavm1G2tUzVYKHH9xp25
gathers lw6GGDLwe3EeeoOTk9DOaVuXu3ivL7JZ
Rolodex KPXZN8qs9rBEAVNEoTcvMDkILQZuScqK
peat    vYOD9mKNmnaqgaf2qJpW7oQyH9qpr42g
```

```bash
bandit7@bandit:~$ awk '$1 == "millionth" {print $2}' data.txt
```

**Password**: dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc

#### Notes: 
remember $0 is the entire row. $1 is first column, $2 second column. $NF is last field


## Bandit level 8 -> 9
#### Challenge: The password for the next level is stored in the file data.txt and is the only line of text that occurs only once

#### Solution: 
```bash

```

```plaintext

```

```bash

```

**Password**: 

#### Notes: 

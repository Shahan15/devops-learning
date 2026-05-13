
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



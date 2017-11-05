# Log Time

My initial intention to write this script was to track how much time my
computer is busy compiling various stuff.

# Example Usage

```
alias make="log-time.sh make"
```

# Output

By default, `log-time` writes its data into the file `~/.log_time`, which
can be altered by setting the environment variable `LOG_TIME_FILE`.

Each entry takes one line and looks something like:

```
{ ts:1509903694, wd:"/home/r2p2/code/ortCC/build", cmd:"make", duration:27, ret:0 }
```

- **ts**: unix timestamp when the application was started
- **wd**: working directory from where the command was executed
- **cmd**: the command which was executed
- **duration**: real time required to execute the command in seconds
- **ret**: return value


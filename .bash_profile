# access attu normally with a linux environment
alias attu="ssh UNAME@attu.cs.washington.edu"

# mount to attu and change to the filler directory
alias mattu="sshfs UNAME@attu.cs.washington.edu: ~/Desktop/attu/filler && cd ~/Desktop/attu/filler"

# unmount attu. run whenever attu is being slow
alias umattu="cd && umount ~/Desktop/attu/filler"

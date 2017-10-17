# easy-attu
mounting cse attu on your personal mac &amp; accessing files through mac os

## step 1: sshfs
run the following command in your terminal (that's what follows the '$', by the way):
```bash
uname$ sshfs
```
you should get this:
```bash
uname$ -bash: sshfs: command not found
```
that means you need download SSHFS from [here](https://osxfuse.github.io/)  
you'll also want to download FUSE for macOS  
once they've downloaded, follow the install for both  

now, when running sshfs, you should get this:
```bash
uname$ missing host
       see `sshfs -h' for usage
```

## step 2: filler directory
- create a directory on your desktop called 'attu'
- create a subdirectory inside that one called 'filler'

## step 3: mounting to attu
run the following command in terminal (where NETID is your CSE NetId):
```bash
uname$ sshfs NETID@attu.cs.washington.edu: ~/Desktop/attu/filler
```
you'll get some stuff about the connection; say 'yes' and proceed as you normally would when connecting to attu  
you should now be able to navigate to /Desktop/attu/filler, where you'll see everything on attu

## step 4: setting up your bash profile
open your .bash_profile from your root directory (replace 'nano' with another text editor if you like):
```bash
uname$ nano .bash_profile
```
now copy what's [here](https://github.com/chrstnb/easy-attu/blob/master/.bash_profile) over into your bash profile

save & exit your bash profile and close terminal.

you should now be able to run the following:    
**attu**: connect to attu as you normally would, just a shortcut for it    
**mattu**: mount to attu locally and change to its directory; you'll be able to interact with files in the same way that you would in your local interface  
**umattu**: unmounts from attu 

## caveats
- because you'll be running your local environment/OS instead of linux, there may be issues when doing assignments that rely on linux-only commands, so be sure to run attu whenever the expected output is in linux
- there's no warning when your attu session times out, you'll just run mattu and get a long wait before you get some kind of input/output error. when this happens, just unmount and mount again



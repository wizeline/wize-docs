# Linux Command Line Skill Tests

----

### 3 diferent ways of checking for open ports in linux

~~~
netstat -nat | grep -i listen
lsof |grep -i listen
nmap -sT 127.0.0.1
nc -v -z 127.0.0.1 port
>/dev/tcp/127.0.0.1/port
~~~

### 3 different ways to list all processes started by user apache

~~~
ps -u apache -fa
pgrep -U apache -a
APACHE=$(id -u apache);grep -Ee "Uid:.*$APACHE" /proc/[0-9]*/status
~~~

### Explain the following behavior 

~~~
[root@localhost myfile]# touch my_file.txt
touch: cannot touch ‘my_file.txt’: No space left on device
[root@localhost myfile]# df -hP .
Filesystem           Size  Used Avail Use% Mounted on
/dev/mapper/loop2p1  6.8M  152K  6.1M   3% /myfile
~~~

Solution: The server ran out of file-descriptors

~~~
[root@localhost myfile]# df -hPi .
Filesystem          Inodes IUsed IFree IUse% Mounted on
/dev/mapper/loop2p1   2.0K  2.0K     0  100% /myfile
~~~


### Explain the following behavior 

Disk ran out of space:

~~~
[root@localhost myfile]# df -hP .
Filesystem           Size  Used Avail Use% Mounted on
/dev/mapper/loop2p1  6.8M  6.2M  6.0K 100% /myfile
~~~

File is removed

~~~
[root@localhost myfile]# ls -lh
total 6.1M
-rw-r--r--. 1 root root 6.1M May  3 16:13 application.log

[root@localhost myfile]# rm application.log
rm: remove regular file ‘application.log’? y

[root@localhost myfile]# df -hP .
Filesystem           Size  Used Avail Use% Mounted on
/dev/mapper/loop2p1  6.8M  6.2M   18K 100% /myfile
~~~

Space is not reclamed!!, WTF?


Solution:

The file is still opened by a process.. the space won't be reclaimed until the process closes the file or dies.

~~~
[root@localhost myfile]# lsof |grep application.log
python    14120         root    3u      REG              253,4   6324574         12 /myfile/application.log (deleted)

[root@localhost myfile]# ps  -p 14120 -f
UID        PID  PPID  C STIME TTY          TIME CMD
root     14120 11516  0 15:50 pts/0    00:00:01 python


[root@localhost myfile]# kill -SIGHUP 14120
#### Python shows
>>> Hangup

[root@localhost myfile]# df -hP .
Filesystem           Size  Used Avail Use% Mounted on
/dev/mapper/loop2p1  6.8M  138K  6.1M   3% /myfile
~~~


### What could be the causes of High Load in a system and how to solve them?, What tools can you use to check all that?

#### Suggested answers

~~~
1. CPU spikes, possible bug or high usage, consider talking to developers, kill the process
2. Too many processes, reduce the number of processes that can be created by the user (shell limits), kill the process
3. Too much IO, check all processes and look for status 'D', too many processes with IO operations or io waiting (bad disks)
4. No high cpu, no high memory, no high IO, consider checking memory health, look for mce.log (memory correctable errors)
5. Network consumption, this rare is a cause of high load, but consider checking it
~~~

### Tools

~~~
top
sar
iostat
netstat
uptime
vmstat
~~~


### How to increase the number of inodes of a filesystem?

Answer:

~~~
mkfs -i XXX /dev/sdX (this will wipe your fs) 
~~~


### How to create a new PV Device with LVM

e.g.

~~~
# Get the last end of the partition of the disk, that will be our start 
parted -s /dev/sda print unit b
# Create a new partition 
parted -s /dev/sda mkpart extended XXXXXXB YYYYYYYB
parted -s /dev/sda5 set lvm on
# Create the Physical Volume
pvcreate /dev/sda5
~~~

### How to increase an existing LV 1 GB

Answer:

~~~
# Check if there's enough size
vgdisplay

# Add 1 GB to the LV
lvextend -L +1G /dev/mapper/vg_sys_lv_myLV
# or
lvextend -L +1G /dev/vg_sys/lv_myLV

# Resize partition
resize2fs /dev/mapper/vg_sys_lv_myLV
# or
resize2fs /dev/vg_sys/lv_myLV
~~~


### What causes and how to solve the following message
Too Many open files

~~~
# increase shell open files, add to your bash profle
ulimit -n XXXX
~~~

### How to change kernel parameters?

~~~
sysctl, echo X >/proc/sys/X/Y
~~~

### How to flush memory cache?

~~~
echo 1,2,3 >/proc/sys/vm/drop_caches
~~~

### How to tell how much memory my system has?

~~~
free, look for total memory cache/available
~~~

### What is the difference of /proc and /sys FS

~~~
/proc is a pseudo fs that holds kernel information in old format
/sys is a pseudo fs that holds kernel and hardware information in a new format
~~~


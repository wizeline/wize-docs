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
## Python shows
>>> Hangup

[root@localhost myfile]# df -hP .
Filesystem           Size  Used Avail Use% Mounted on
/dev/mapper/loop2p1  6.8M  138K  6.1M   3% /myfile
~~~


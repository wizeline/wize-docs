# Linux Skill Tests

----

### \[Difficulty: Easy\] 3 diferent ways of checking for open ports in linux

~~~
netstat -nat | grep -i listen
lsof |grep -i listen
nmap -sT 127.0.0.1
nc -v -z 127.0.0.1 port
>/dev/tcp/127.0.0.1/port
~~~

### \[Difficulty: Easy\] 3 different ways to list all processes started by user apache

~~~
ps -u apache -fa
pgrep -U apache -a
APACHE=$(id -u apache);grep -Ee "Uid:.*$APACHE" /proc/[0-9]*/status
~~~

### \[Difficulty: Easy\] How do you verify an SSL certificate of a Website is expired
~~~
use CURL, WGET and check the SSL expiration date
open the browser and see if the expiration message is shown.
~~~

### \[Difficulty: Medium\] Explain the following behavior

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


### \[Difficulty: Medium\] Explain the following behavior

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


### \[Difficulty: Medium\] What could be the causes of High Load in a system and how to solve them?, What tools can you use to check all that?

#### Suggested answers

~~~
1. CPU spikes, possible bug or high usage, consider talking to developers, kill the process
2. Too many processes, reduce the number of processes that can be created by the user (shell limits), kill the process
3. Too much IO, check all processes and look for status 'D', too many processes with IO operations or io waiting (bad disks)
4. No high cpu, no high memory, no high IO, consider checking memory health, look for mce.log (memory correctable errors)
5. Network consumption, this rare is a cause of high load, but consider checking it
~~~

#### Tools

~~~
top
sar
iostat
netstat
uptime
vmstat
~~~


### \[Difficulty: Medium\] How to tell how much memory my system has?

~~~
free, look for total memory cache/available
~~~

### \[Difficulty: Medium\] What is the difference of /proc and /sys FS

~~~
/proc is a pseudo fs that holds kernel information in old format
/sys is a pseudo fs that holds kernel and hardware information in a new format
~~~

### \[Difficulty: Medium\] How to review an SSL certificate file in PEM format
~~~
openssl -in cert.pem -noout -text
~~~

### \[Difficulty: Medium\] You have an SSL certificate in DER format, but AWS requires PEM formats, what do you need to do to upload that certificate to IAM?
~~~
Convert the certificate using openssl command from DER to PEM
~~~

### \[Difficulty: Advanced\] How to increase the number of inodes of a filesystem?

Answer:

~~~
mkfs -i XXX /dev/sdX (this will wipe your fs)
~~~


### \[Difficulty: Advanced\] How to create a new PV Device with LVM

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

### \[Difficulty: Advanced\] How to increase an existing LV 1 GB

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


### \[Difficulty: Advanced\] What causes and how to solve the following message
Too Many open files

~~~
# increase shell open files, add to your bash profle
ulimit -n XXXX
~~~

### \[Difficulty: Advanced\] How to change kernel parameters?

~~~
sysctl, echo X >/proc/sys/X/Y
~~~

### \[Difficulty: Advanced\] How to flush memory cache?

~~~
echo 1,2,3 >/proc/sys/vm/drop_caches
~~~


### \[Difficulty: Advanced\] How to create a RAID0/5/6/10 Array ?

Let the candidate to tell about his/her experience with redundant disks

Hardware/Software based arrays, explain advantages of them, etc.





### List at least 30 commmands used in the cli

|Column1     |Column2     |Column3     |Column4     |Column5     |Column6     |Column7     |Column8     |
|------------|------------|------------|------------|------------|------------|------------|------------|
|alias       |awk         |break       |cat         |cd          |cgdisk      |chdir       |chmod       |
|chown       |continue    |cp          |cut         |date        |dd          |df          |diff        |
|dirs        |du          |echo        |emacs       |env         |eval        |exec        |false       |
|fdisk       |for         |g++         |gcc         |gdb         |getopts     |grep        |history     |
|host        |if          |ifconfig    |ip          |jobs        |kill        |ld          |less        |
|ln          |losetup     |ls          |man         |md5         |mkdir       |mkfs        |more        |
|mount       |mv          |nano        |netstat     |nice        |nohup       |parted      |partprobe   |
|pgrep       |pico        |ping        |popd        |printf      |ps          |pushd       |pwd         |
|readlink    |reboot      |rm          |rmdir       |scp         |sed         |shift       |shutdown    |
|source      |ssh         |ssh-copy-id |ssh-keygen  |stat        |su          |sudo        |tail        |
|tar         |tee         |test        |time        |tree        |true        |ulimit      |umount      |
|uname       |unset       |unxz        |vi          |visudo      |watch       |which       |while       |
|who         |whoami      |xargs       |xz          |



# Programming Skills (~30 min)

Background:
- Known languages
- Experience with languages
- Stuff built

Example solution to the CIDR mask convert.
~~~
#Create a function that converts CIDRs numbers to Subnet Mask IP format and viceversa.
#
#Subnet Mask is very similar to an IP address and it's defined by 4 octets with values of the MSB on.
#A CIDR Subnet mask notation defines a subnet (Classless InterDomain Routing) based on the number of bits that are on.


#e.g. 255.255.0.0 must return /16
#16 must return 255.255.0.0 /1 <==> /32 CIDR
#
# 255.0.0.0 ===> 1111 1111.0000 0000.0000 0000.0000 0000 ==> /8
# /10 ===> 1111 1111.1100 0000.0000 0000.0000 0000 ===> 255.192.0.0

# class to convert from cidr to mask and th eother way
class CidrMask
  def cidr_to_mask(x)
    in_int = 0xFF_FF_FF_FF - (2**(32 - x) - 1)
    s = in_int.zero? ? '00000000' : in_int.to_s(16)
    m = s.match(/(.{2})(.{2})(.{2})(.{2})/)
    m.captures.map { |e| e.to_i(16) }.join('.')
  end

  def build_lookup_table
    @lookup_table = (0..32).collect { |i| [i.to_s, cidr_to_mask(i)] }
  end

  def convert(value)
    s_value = value.to_s
    build_lookup_table unless @lookup_table
    @lookup_table.each do |r|
      return r[1] if s_value == r[0]
      return r[0] if s_value == r[1]
    end
    "Invalid value #{value}!"
  end
end

# Tests
cm = CidrMask.new

# Valid
[0, 1, 16, 21, 32].each do |x|
  puts cm.convert(x)
end
# Valid
['0.0.0.0', '128.0.0.0', '255.255.0.0',
 '255.255.248.0', '255.255.255.255'].each do |x|
  puts cm.convert(x)
end
# Invalid
[-1, 33].each do |x|
  puts cm.convert(x)
end
# Invalid
['0.0.0.0.0', '255.255.255', '11.0.0.0'].each do |x|
  puts cm.convert(x)
end
~~~



# Cloud Infrastructure and automation

### \[Difficulty: Easy\] What do I need to do to create a new SSL certificate?
~~~
Use ACM and follow the current AWS process
use openssl to create a new CSR (Certificate signing request), send your CSR to an authorized CA, onc it's
signed it can be used
~~~

### \[Difficulty: Easy\] Could you tell me know can I create an AMI of a running instance?
~~~
Go to AWS console, right click on the instance and take snapshot
~~~

### \[Difficulty: Easy\] I want to create an AMI every month, what's the best approach to do this?
~~~
Create an automated tasks that runs every month, use tools such as:
Jenkins
packer
awscli create-image
~~~

### I have an Auto Scaling Group using a Launch Configuration that has spot instances, the spot price has increased in the region and all the AZ and all your instances are now destroyed, what do you need to do to recover them back?
~~~
Create a copy of the launch config, assign a higher value for the spot instances, another approach is to remove the AZ from the ASG to avoid using that what is more expensive
~~~

### What happens if I restart a docker image?
~~~
The process will stop and start again
Won't lose any saved file within the container
~~~

### What happens if I run docker image?
~~~
A new container will be launched
~~~

### You run a docker container that has an website with nginx, but your users can't see it, what do you need to check?
~~~
The container is running and the ports are exposed
Your SG has permissions to access the port
~~~

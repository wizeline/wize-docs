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


### Example app to migrate to cloud

Small twitter app.

The developers have been running this locally:

~~~
  |---------------|        |--------------|        |-----------|
  | Web Frontend  | -----> | Web Backend  | -----> | Database  |
  |---------------|        |--------------|        |-----------|
~~~

#### Questions:

How would you setup your infrastructure to deploy this?
A.

How do you make it HA?
A. Using multiple replicas in different AZ. You may have even more redundancy
using multi region or multi cloud.

How do you build a CICD pipeline?
A.

Suppose the users increase 10^5 times. What changes would you need to do to
continue running the services.

Web Backends has increased considerably in size, code complexity and resource
utilization. You are already using instances type `m4.4xlarge`. What
recommendation and designs changes would you give to the developers.
A. Use a micro-services approach.

Suppose you used a micro-services approach and now have 10 services. How do you
handle failure isolation and failure from cascading.
A. retries strategy. Circuit breakers. Queues.

Your database is having performance problems. What solution would you use?
A. Using a DB cache e.g. redis, memcached.

What can you use to evenly distribute workload.
A. Load balancer

Besides form a load balancer what other approach can you user to distribute load.
A. Queues e.g. rabbitmq, sqs, or DNS load-balancing
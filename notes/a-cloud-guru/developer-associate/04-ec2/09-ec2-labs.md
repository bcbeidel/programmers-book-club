# EC2 Lab: Create A Web Server

1. Create an EC2 instance with the defaults.
2. SSH into EC2 Instance
    ```
    ssh ec2-user@<ip-address> -i <path-to-key-pair>
    ```
3. Create our webserver
    ```
    # do OS install
    $ yum update -y 
    # install apache
    $ yum install httpd -y
    # go to html directory
    $ cd /var/www/html
    # create index file
    $ nano index.html
    ```
4. Create Our HTML
    ```
    <html><h1>Put stuff in HTML</h1></html>
    ```
5. Start the server
    ```
    # start html server
    $ service httpd start
    ```
6. Navigate to IP
Navigate to IP address.

## Exam Tips:

- Termination protection is turned off by default, you must turn it on.
- On an `EBS-backed` instance, teh default action is for the root volume to be deleted when the instance is terminated
- EBS root volumes of the DEFAULT AMI's (Amazon Machine Images) cannot be encrypted.  You can use a third party tool (such as bit locker, etc.) to encrypt the root volume, or this can be done when creating AMIs in the console or with the API.
- Additional volumes can be encrypted
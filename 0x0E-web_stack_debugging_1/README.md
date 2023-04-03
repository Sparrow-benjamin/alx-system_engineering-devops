# Wed stack debugging #1
Debugging usually takes a big chunk of a software enginner's time. The art of debugging is tough and it takes years, even decades to master, and that is why seasoned software engineers are the best at it...experience. They have seen lots of broken code, buggy systems, weird edge cases and race conditions.

In this project I will be debugging a nginx server running in a docker container.
## Test and verify your assumptions
The idea is to ask a set of questions until you find the issue. For example, if you installed a web server and it isn't serving a page when browing the IP. here are some questions you can ask youself to start debugging:
- Is the web server starte?
- On what port should it listen?
- Is it actually listening on this port? run - *netstat -lpdn*
- It is listening on the correct server IP? - *netstat* is also your friend here
- Is the firewall enabled?
- Have you looked at logs? usually in */var/log* and *tail -f* is your friend
- Can I connect to the HTTP port from the location I am browsing from? *curl* is your friend.

## Task
* **0. Nginx likes port 80**
[0-nginx_likes_port_80](./0-nginx_likes_port_80): Bash Script that configures a server according to requirements.
Using debugging skills, find out what's keeping your Ubuntu container's Nginx installation from listening on port 80.

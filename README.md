`mkdir nginx-container`

`cd nginx-container`
<hr>

 `docker run --name nginx -p 80:80 -d nginx`

 `curl http://desk:80` 
 _or_ 
 _search_ `localhost/ ` _in your browser_
<hr>

 _create a directory for your html doc_
 `mkdir html`
 `cd html`
 `vim index.html`   /editor of your choice 
 
 _add your index page e.g:_
 <code>`<html><body><h1> Hello Mars <h1></body></html>`</code>

<hr>

 _stop the running demo container:_
 `docker stop nginx`

 _delete the demo container:_
 `docker rm nginx`
 <hr>

_setup new container:_
 `docker run --name nginx -p 80:80 -v /home/desk/Desktop/nginx-container/html:/usr/share/nginx/html -d nginx`

 (important:
make sure to use **your own local directory path**)

_

test the new html page is being served instead of the default nginx welcome page:

 `curl http://desk:80` 
 _or_ 
 _search_ `localhost/ ` _in your browser_

_
_(so far.. nginx is working as a simple webserver)_
<hr>

_this next section demonstrates how to override the default configuration of nginx setting it up as a reverse proxy which will point to 3 new instances of your continerised app, nginx will be configured to balance the load between them_

<hr>


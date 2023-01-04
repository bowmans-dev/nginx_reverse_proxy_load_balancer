_create a directory/folder for your nginx implementation:_

`mkdir nginx-container`

`cd nginx-container`
<hr>

_the following example will spin up nginx on the default port commonly used for http (both the specified port and_ **--name ng1** are optional)_

   `docker run --name ng1 -p 80:80 -d nginx`

_view in CLI or browser:_

 - `curl http://localhost:80` 
 - _or_ 
 _search_ `localhost/ ` _in your browser_
 
 (you should see the nginx welcome page)
<hr>

 _stop the running demo container:_
 - `docker stop ng1`

 _delete the demo container:_
 - `docker rm ng1`
 
<hr>

 _create a directory/folder for your html file:_
 - `mkdir html`
 - `cd html`
 - `vim index.html`   /editor of your choice 
 
 _add your index page e.g:_
###### <code>```<html><body><h1> Hello Mars <h1></body></html>```</code>

<hr>

_setup new container:_
   
 (**important:**
make sure to replace this next section: `/home/desk/Desktop/nginx-container/html:` with **your own directory path to the new html folder**)
   
```
 docker run --name ng1 -p 80:80 -v /home/desk/Desktop/nginx-container/html:/usr/share/nginx/html -d nginx
```

<hr>

test the new html directory content/page is being served instead of the default nginx welcome page:

 - `curl http://localhost:80` 
 - _or_ 
 _search_ `localhost/ ` _in your browser_

#### (so far.. nginx is being implemented as a simple web server)
<hr>

_the next repo: **nginx_reverse_proxy** demonstrates how to override the default configuration of nginx setting it up as a reverse proxy which will point to 3 new instances of your continerised app, nginx will be configured to balance the load between them_
<hr>

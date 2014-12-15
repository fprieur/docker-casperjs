# Casperjs 

ubuntu 14.04<br>
phantomjs 1.9.7<br>
casperjs 1.1.0-beta3<br>

## Usage ##
<pre>
docker run fprieur/docker-casperjs casperjs --version
docker run -v `pwd`/casperjs-files:/home/casperjs-files fprieur/docker-casperjs casperjs /home/casperjs-files/sample.js
</pre>

## Take a screenshot ##
<pre>
docker run -v `pwd`/casperjs-files:/home/casperjs-files fprieur/docker-casperjs casperjs test /home/casperjs-files/capture.js
</pre>

Please feel free to contribute or report any bugs.

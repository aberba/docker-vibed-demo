# docker-vibed-demo

A demo web server application using the [vibe.d web framework](https://vibed.org) written in [D](https://dlang.org). It uses `dlang2/dmd-ubuntu` as base image. You can find the based image repository at https://github.com/dlang/dmd.


## Building Application Image
You must have docker installed on your system. Whilst in the project root, run `docker build -t TAGNAME .` to build. 

## Running
Run the app with `docker run -d -p 8080:8080 TAGNAME`. This will start the application on port 8080.

## Stopping application
Stop docker process (application) with `docker kill TAGNAME`.

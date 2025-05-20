# Dockerfile for The Carpentries Workbench

This is a WIP dockerfile for running The Carpentries Workbench. The installed
size is just over 4GB. Note, building this container once will give you a
snapshot of the Workbench _at a particular time_. Given the fact that The
Workbench is continuously improving, you may want to consider rebuilding the
container periodically.

## Known issues

At the moment, these are the known issues:

 - No port is exposed, so previewing is not yet possible
 - You must run the commands given below. Because {renv} uses symlinks to a
   global package library, these folders will need to be ignored beforehand.
 - Output is written as the root user, so you will need to run `chown` on the
   directories if you want to use them in a meaningful way.


## Building the image

The image can be built from within this directory via

```
docker build -t workbench-docker .
```


## Rendering a lesson

A lesson can be rendered via this command where `$(pwd)` is expected to evaluate
to the current working directory.

For Markdown-based lessons (no R Markdown files):

```bash
cd /path/to/lesson
docker run --rm -it \
 -v $(pwd):/home \
 -v /home/site/* \
 -w /home \
 workbench-docker R -e 'sandpaper::build_lesson()'
```

For R-markdown-based lessons, a little extra setup is required: 

```bash
cd /path/to/lesson
docker run --rm -it \
 -v $(pwd):/home \
 -v /home/site/* \
 -v /home/renv/profiles/lesson-requirements/renv/ \
 -v /home/renv/sandbox/ \
 -w /home \
 workbench-docker R -e 'sandpaper::use_package_cache(); sandpaper::build_lesson()'
```

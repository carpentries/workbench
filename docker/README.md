# Dockerfile for The Carpentries Workbench

This is a WIP dockerfile for running The Carpentries Workbench. The installed
size is just over 4GB. Note, building this container once will give you a
snapshot of the workbench _at a particular time_. Given the fact that The
Workbench is continuously improving, you may want to consider rebuilding the
container periodically.

## Known issues

At the moment, these are the known issues:

 - No port is exposed, so previewing is not yet possible
 - If a lesson uses {renv} and has been rendered locally, then there _will_ be a
   conflict with the local {renv} installation.


## Building the image

The image can be built from within this directory via

```
docker build -t workbench-docker .
```


## Rendering a lesson

A lesson can be rendered via this command where `$(pwd)` is expected to evaluate
to the current working directory.

```bash
cd /path/to/lesson
docker run --rm -it \
 -v $(pwd):/home \
 -w /home \
 workbench-docker R -e 'sandpaper::build_lesson()'
```


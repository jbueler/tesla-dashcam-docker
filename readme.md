# Tesla Cam - Docker

This is a docker container setup to run the tesla dashcam stitch found at https://github.com/ehendrix23/tesla_dashcam.

## Building:

    docker build . -t tesla-dashcam

## Usage:

    docker run --rm -v {source_video_directory}:/app/videos tesla-dashcam

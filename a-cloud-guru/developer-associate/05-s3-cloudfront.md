# Cloudfront

A content delivery network (CDN) that delivers web pages and other assets to users based on the current location, geographic location of the user, and the origin of the webpage.

It gives the bang for the buck by putting content closer to the point of consumption, reducing network time.


https://s3-accelerate-speedtest.s3-accelerate.amazonaws.com/en/accelerate-speed-comparsion.html

## Definitions

- Edge Location 
    - Location where content will be cached
- Origin
    - The original source of content (S3 bucket, or other things)
- Distribution 
    - Name given to the CDN, which includes all the edge location


## Workflow

1) User requests content from an edge location
2) Edge location determines if it has the content, if not it downloads from origin
3) Edge location provides content to user after download, with a `time-to-live`
4) Additional users who request content get content from edge location while it is still valid
5) After `time-to-live` edge location gets new content if requested

## Notes

- Edge locations are not read-only (i.e., transfer acceleration)
- Objects are cached for the TTL (Time to live)
    - You can invalidate the cache and push out content

## Types of distribution

- Web (Primary)
- RTMP (Adobe Flash Media Server)
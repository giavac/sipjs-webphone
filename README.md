# sipjs-webphone
WebRTC client based on sipjs library

## Build container

```
docker stop sipjs-webphone && docker rm sipjs-webphone && docker build -t sipjs-webphone .
```

## Run container

```
docker run -d -p 443:443 --name sipjs-webphone sipjs-webphone
```

## Setup

Before building the container, add your SSL certificates to the `certs/` directory. See `certs/README.md` for instructions.

## Acknowledgments

Developed by Giacomo Vacca with assistance from Claude AI (Anthropic) for code implementation, Docker setup, and best practices guidance.


# sipjs-webphone
WebRTC client based on sipjs library

# Build container

```
docker stop sipjs-webphone && docker rm sipjs-webphone && docker build -t sipjs-webphone .
```

# Run container

```
docker run -d -p 443:443 --name sipjs-webphone sipjs-webphone
```


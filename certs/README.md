# SSL Certificates

This directory should contain your SSL certificates for HTTPS support.

## Required Files

- `fullchain.pem` - Full certificate chain
- `privkey.pem` - Private key

## Option 1: Let's Encrypt (Recommended for Production)

```bash
# Install certbot
sudo apt-get install certbot

# Generate certificates
sudo certbot certonly --standalone -d yourdomain.com

# Copy certificates to this directory
sudo cp /etc/letsencrypt/live/yourdomain.com/fullchain.pem ./fullchain.pem
sudo cp /etc/letsencrypt/live/yourdomain.com/privkey.pem ./privkey.pem
```

## Option 2: Self-Signed Certificate (For Development/Testing)

```bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout privkey.pem \
  -out fullchain.pem \
  -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"
```

## Important Notes

- These certificate files are **NOT** tracked by git (excluded in `.gitignore`)
- Never commit real certificates to version control
- The placeholder files in this directory are for build testing only
- For production, use valid certificates from a Certificate Authority

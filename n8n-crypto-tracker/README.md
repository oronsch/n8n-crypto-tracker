# n8n Crypto Price Tracker

This project uses n8n to track cryptocurrency prices (BTC, ETH, ADA, XRP) and store them in a Google Sheet or CSV file.

## Features

- Hourly price updates for BTC, ETH, ADA, and XRP
- Data storage in Google Sheets or CSV
- Webhook endpoint for real-time price queries
- Docker-based deployment
- Railway deployment support

## Environment Variables

Required environment variables for Railway deployment:

```
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=strongpassword
WEBHOOK_URL=https://<your-subdomain>.up.railway.app
N8N_PORT=5678
N8N_HOST=0.0.0.0
```

## Local Development

1. Build the Docker image:

```bash
docker build -t n8n-crypto-tracker .
```

2. Run the container:

```bash
docker run -p 5678:5678 n8n-crypto-tracker
```

3. Access n8n at http://localhost:5678

## Workflow Setup

1. Import the workflow from the `workflow.json` file
2. Configure the Google Sheets or CSV output
3. Set up the webhook endpoint
4. Enable the workflow

## API Usage

Access the latest prices via webhook:

```
GET https://<your-subdomain>.up.railway.app/webhook/crypto-prices
```

Response format:

```json
{
  "bitcoin": { "usd": 50000 },
  "ethereum": { "usd": 3000 },
  "cardano": { "usd": 1.5 },
  "xrp": { "usd": 0.5 }
}
```

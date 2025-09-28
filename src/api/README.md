# 📚 API Documentation

## Endpoints

### Health Check

```
GET /health
```

Returns application health status.

**Response:**

```json
{
  "status": "healthy",
  "timestamp": "2024-01-01T00:00:00.000Z",
  "uptime": 123.45,
  "environment": "development"
}
```

### Root

```
GET /
```

Returns welcome message.

**Response:**

```json
{
  "message": "🦄🌈✨👋🌎🌍🌏✨🌈🦄"
}
```

### Emojis

```
GET /api/v1/emojis
```

Returns list of emojis.

**Response:**

```json
{
  "emojis": ["🦄", "🌈", "✨", "👋", "🌎", "🌍", "🌏"]
}
```

## Development

```bash
# Start development server
npm run dev

# Run tests
npm test

# Build for production
npm run build
```

## Environment Variables

| Variable   | Description | Default       |
| ---------- | ----------- | ------------- |
| `NODE_ENV` | Environment | `development` |
| `PORT`     | Server port | `3000`        |

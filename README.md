# DAO Agents

A project built with Mastra for creating DAO agents.

## Features

- Weather workflow and agent implementation
- Built with TypeScript and Mastra framework
- Dockerized for easy deployment

## Getting Started

### Prerequisites

- Node.js 20 or later
- npm

### Installation

1. Clone the repository
2. Install dependencies:
   ```
   npm ci
   ```

### Development

Run the development server:

```
npm run dev
```

The server will be available at:
- API: http://localhost:4111/api
- OpenAPI documentation: http://localhost:4111/openapi.json
- Swagger UI: http://localhost:4111/swagger-ui
- Playground: http://localhost:4111/

### Docker

Build the Docker image:

```
docker build -t dao-agents .
```

Run the container:

```
docker run -p 4111:4111 --env-file .env.development dao-agents
```

## License

ISC

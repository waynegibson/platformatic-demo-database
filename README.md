# Platformatic Demo DB Api

The Platformatic demo database API used to practice and test various options and setups.

The Platformatic demo DB API, consists of -

- Platformatic DB service (PostgreSQL)

## Requirements

Platformatic supports macOS, Linux and Windows ([WSL](https://docs.microsoft.com/windows/wsl/) recommended).
You'll need to have [Node.js](https://nodejs.org/) >= v18.8.0

## Setup

1. Install dependencies:

```bash
pnpm install
```

2. Create `.env` files for each service:

```bash
pnpm run -r configure
```

3. Apply migrations for all service databases:

```bash
pnpm run -r migrate
```

4. Seed all service databases:

```bash
pnpm run -r seed
```

## Docker

Firstly copy the `.env.example` file to `.env` in order set the enviroment variables. The docker container is used for `development only`. When you run the file, it creates a database container for PostgeSQL, MySQL and Redis. You can decide which database to use for the project.

```bash
cp .env.example .env
```

Run this command to give the script the correct permissions.

```bash
chmod +x ./scripts/docker-development.sh
```

First make sure the docker daemon is running. Then to start a docker container run -

```bash
pnpm docker:start
```
To destroy or stop the docker container run -

```bash
pnpm docker:stop

## Usage

Run the Runtime app with:

```bash
pnpm start
```
```

### Explore
- ⚡ The Platformatic DB server is running at http://localhost:3044/
- 📔 View the REST API's Swagger documentation at http://localhost:3044/documentation/
- 🔍 Try out the GraphiQL web UI at http://localhost:3044/graphiql



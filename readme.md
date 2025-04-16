# Laravel Docker Testing Project

A containerized Laravel application designed for testing Laravel features in an isolated Docker environment.

## Project Overview

This project provides a ready-to-use Laravel development environment using Docker containers. It's specifically set up to streamline testing processes and ensure consistent development experiences across different machines.

## Features

- Fully containerized Laravel application
- Pre-configured Docker environment
- Simplified local development workflow
- Isolated testing environment
- Database setup with SQLite for quick testing

## Requirements

- Docker and Docker Compose
- Git

## Getting Started

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/aisuvro/dockerTest.git
   ```
   cd dockerTest
   ```

2. Set up environment variables:
   use your host machine's IP address to the mysql host in the `.env.example` 

 
3. Start the Docker containers:
   ```bash
   docker-compose up -d
   ```
## Container Structure

The project uses the following containers:
- **app**: PHP container with Laravel application
- **nginx**: Web server for serving the application
- **database**: Host machine's MySQL server for database operations

## Development Workflow

1. Make changes to the application code
2. Run tests to verify functionality
3. Use Laravel's built-in tools for development assistance

## License

[MIT](LICENSE)
# Docker build
PHP APACHE MYSQL

Docker compose setup.

# Strating from cloning files to project folder
`git clone https://github.com/cryptoishere/dockerStartUp.git`

`cd dockerStartUp`

## Configurations
* .env - edit environment variables for your need
* php/custom_php.ini - customize php.ini >>> xDebug

* public_html - app files goes here (Project can be installed via Composer)
* sql - database <dump>.sql goes here (On build docker use dump file to create database)

* Additionally we can add extra php extensions in ./php/Dockerfile

### Included
xDebug-2.9.6, Composer 2.0.0-RC2


# Run in command line
`docker-compose build && docker-compose up -d`

# IDE configuration
After successful installation configure IDE(VSCODE) xdebug launch.json configuration file, to make xDebug work properly
## Example
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Listen for XDebug on WSL",
            "type": "php",
            "request": "launch",
            "pathMappings": {
                "/var/www/html": "${workspaceRoot}"
            },
            "hostname": "0.0.0.0",
            "port": 9001
        }
    ]
}

# OnSuccess
URL = http://localhost
DB  = 127.0.0.1:5306
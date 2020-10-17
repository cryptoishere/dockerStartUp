# Docker build
PHP APACHE MYSQL

# Strating from cloning files to project folder
`git clone https://github.com/cryptoishere/dockerStartUp.git`

`cd dockerStartUp`

## Configurations
* .env - set values or use existing
* php/custom_php.ini - customize php.ini >>> xDebug
* public_html - app files goes here
* sql - database <dump>.sql goes here

* Additionally we can add extra php extensions in ./php/Dockerfile

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

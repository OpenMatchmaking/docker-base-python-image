# microservice-base-python-image
Base Docker image for building Python microservices

# Available environment variables
| Name          | Description                                        | Values      |  
|---------------|----------------------------------------------------|-------------|  
| APP_SERVER    | Specifies command that will run a web application. | `sanic` (Sanic server), `none` (run in the idle mode (sleep)) |

# microservice-base-python-image
Base Docker image for building Python microservices

# Available environment variables
| Name              | Description                                          | Default value | Values        |      
|-------------------|------------------------------------------------------|---------------|---------------|  
| APP_SERVER        | Specifies command that will run a web application.   | `none`        | `sanic` (Sanic server), `simplerun` (run the application via `run.py` script in the `app/` folder, `none` (run in the idle mode (sleep)) |  
| MONGODB_HOST      | Hostname of the MongoDB instance.                    | mongodb       | –             |
| MONGODB_PORT      | Listened port by the MongoDB instance.               | 27017         | –             |
| REDIS_HOST        | Hostname of the Redis.                               | redis         | –             |
| REDIS_PORT        | Listened port by the Redis instance.                 | 6379          | –             |
| RABBITMQ_HOST     | Hostname of the RabbitMQ instance.                   | rabbitmq      | –             |
| RABBITMQ_PORT     | Listened port by the RabbitMQ instance.              | 5672          | –             |
| WAIT_FOR_MONGODB  | Wait until the MongoDB container isn't initialized.  | `false`       | `false` or a positive integer value | 
| WAIT_FOR_REDIS    | Wait until the Redis container isn't initialized.    | `false`       | `false` or a positive integer value |
| WAIT_FOR_RABBITMQ | Wait until the RabbitMQ container isn't initialized. | `false`       | `false` or a positive integer value |

# Bootstrap for PHP-APACHE Web-application

Bootstrap for docker web-applications


## Usage

1. Change the container names to your choice. Remember to also change names where link/dependencies.





## For use with jwilder/nginx-proxy
Container-app needs

environment:
  \- VIRTUAL_HOST=backend.mydomain.no

And to be in the same network as jwilder/nginx-proxy, e.g.:

networks:
  default:
    external:
      name: webproxy
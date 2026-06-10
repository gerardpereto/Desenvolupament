terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_container" "web" {
  name  = "web-gerard-tf"
  image = "nginx:alpine"

  ports {
    internal = 80
    external = 8082
  }
}

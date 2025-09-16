resource "docker_network" "app_net" {
    name = "appnetwork"
}
resource "docker_container" "app1" {
  name  = "app1"
  image = "nginx:1.29.1-perl"

  ports {
    internal = 80
    external = var.ngnix_app1_ports_external
  }

  networks_advanced{
    name = docker_network.app_net.name
  }
  networks_advanced{
    name = docker_network.persistence_net.name
  }
}

resource "docker_container" "app2" {
  name  = "app22"
  image = "nginx:1.29.1-perl"

  ports {
    internal = 80
    external = var.ngnix_app2_ports_external
  }

  networks_advanced{
    name = docker_network.app_net.name
  }
  networks_advanced{
    name = docker_network.persistence_net.name
  }
}

resource "docker_container" "app3" {
  name  = "app3"
  image = "nginx:1.29.1-perl"

  ports {
    internal = 80
    external = var.ngnix_app3_ports_external
  }

  networks_advanced{
    name = docker_network.app_net.name
  }
  networks_advanced{
    name = docker_network.persistence_net.name
  }
}

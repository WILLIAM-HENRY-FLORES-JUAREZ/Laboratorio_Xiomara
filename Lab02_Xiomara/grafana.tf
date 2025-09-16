resource "docker_network" "monitor_net" {
    name = "monitor_net"
}

resource "docker_container" "grafana"{
    name = "grafana"
    image = "grafana/grafana:12.3.0-17718666199-ubuntu"
    ports {
        internal =  3000
        external =  var.grafana_ports_external
    }

    networks_advanced{
        name = docker_network.monitor_net.name
    }
    networks_advanced{
        name = docker_network.app_net.name
    }
}
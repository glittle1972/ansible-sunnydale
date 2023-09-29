# Sunnydale

Really, I think I just need to keep xander as is, and move my home directory/docs/pics to a new server? And if I'm going to do that, I may as well just use the laptop, and backup to a NAS?

## Current
```plantuml
@startuml
nwdiag {
    network internet {
        router
    }

    network lan {
        address = 192.168.0.0/24
        router [address = 192.168.0.1]

        vm_tv_box [address = 192.168.0.x]
        mesh_router [address = 192.168.0.29]
    }

    network sunnydale {
        address = 192.168.5.0/24

        mesh_router [address = 192.168.5.1]
        xander [address = 192.168.5.66]
        anya [address = dhcp]
        giles [address = dhcp]

    }

    network bridge {
        address = 172.17.0.0/24

        xander [address = 172.17.0.1]
        portainer [adress = 172.17.0.2]
        plex [address = 172.17.0.3]
        unlimited_vpn [address = 172.17.0.4]
        noip [address = 172.17.0.5]
        wireguard [address = 172.17.0.6]
    }

    network keycloak_default {
        address = 172.24.0.0/24

        xander [address = 172.24.0.1]

        kc_postgres [address = 172.24.0.2]
        kc_keycloak [address = 172.24.0.3]
    }

    network tun0 {
        address = 10.200.0.0/24

        unlimited_vpn [address = 10.200.0.1]

        transmission [address = 10.200.0.134]
    }

}
@enduml
```
## Target
```plantuml
@startuml
nwdiag {
    network internet {
        router
    }

    network lan {
        address = 192.168.0.0/24
        router [address = 192.168.0.1]

        vm_tv_box [address = 192.168.0.x]
        mesh_router [address = 192.168.0.29]
    }

    network sunnydale {
        address = 192.168.5.0/24

        mesh_router [address = 192.168.5.1]
        xander [address = 192.168.5.66]
        anya [address = dhcp]
        giles [address = dhcp]
        darla [address = 192.168.5.67]
    }

    network bridge_xander {
        address = 172.17.0.0/24

        xander [address = 172.17.0.1]
        portainer [adress = 172.17.0.2]
        plex [address = 172.17.0.3]
    }

    network bridge_darla {
        address = 172.17.0.0/24

        darla [address = 172.17.0.1]

        unlimited_vpn [address = 172.17.0.2]
        noip [address = 172.17.0.5]
        wireguard [address = 172.17.0.6]
    }

    network keycloak_default {
        address = 172.24.0.0/24

        darla [address = 172.24.0.1]

        kc_postgres [address = 172.24.0.2]
        kc_keycloak [address = 172.24.0.3]
    }

    network tun0 {
        address = 10.200.0.0/24

        unlimited_vpn [address = 10.200.0.1]

        transmission [address = 10.200.0.134]
    }

}
@enduml
```

virtual_machines = {
  "pg-1" = {
    vm_name   = "pg-1"                 # Имя ВМ
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 20                     # Объём диска в ГБ
    disk_name = "pg-1-ubuntu-disk"     # Название диска
    template  = "fd89a0bj96o8sp88tn6s" # ID образа ОС для использования
    fraction  = 20
    platform  = "standard-v3"
    meta      = "userdata.cfg"
    stopping  = true
  }
  "pg-2" = {
    vm_name   = "pg-2"                 # Имя ВМ
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 20                     # Объём диска в ГБ
    disk_name = "pg-2-ubuntu-disk"     # Название диска
    template  = "fd89a0bj96o8sp88tn6s" # ID образа ОС для использования
    fraction  = 20
    platform  = "standard-v3"
    meta      = "userdata.cfg"
    stopping  = true
  }
  "haproxy" = {
    vm_name   = "haproxy"              # Имя ВМ
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 20                     # Объём диска в ГБ
    disk_name = "haproxy-ubuntu-disk"  # Название диска
    template  = "fd89a0bj96o8sp88tn6s" # ID образа ОС для использования
    fraction  = 20
    platform  = "standard-v3"
    meta      = "userdata.cfg"
    stopping  = true
  }
  "mediawiki1" = {
    vm_name   = "mediawiki1"              # Имя ВМ
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 20                     # Объём диска в ГБ
    disk_name = "mediawiki1-ubuntu-disk"  # Название диска
    template  = "fd89a0bj96o8sp88tn6s" # ID образа ОС для использования
    fraction  = 20
    platform  = "standard-v3"
    meta      = "userdata.cfg"
    stopping  = true
  }
  "mediawiki2" = {
    vm_name   = "mediawiki2"              # Имя ВМ
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 20                     # Объём диска в ГБ
    disk_name = "mediawiki2-ubuntu-disk"  # Название диска
    template  = "fd89a0bj96o8sp88tn6s" # ID образа ОС для использования
    fraction  = 20
    platform  = "standard-v3"
    meta      = "userdata.cfg"
    stopping  = true
  }
  "minio" = {
    vm_name   = "minio"              # Имя ВМ
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 20                     # Объём диска в ГБ
    disk_name = "minio-ubuntu-disk"  # Название диска
    template  = "fd89a0bj96o8sp88tn6s" # ID образа ОС для использования
    fraction  = 20
    platform  = "standard-v3"
    meta      = "userdata.cfg"
    stopping  = true
  }
  "nginx-balancer" = {
    vm_name   = "nginx-balancer"              # Имя ВМ
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 20                     # Объём диска в ГБ
    disk_name = "nginx-balancer-ubuntu-disk"  # Название диска
    template  = "fd89a0bj96o8sp88tn6s" # ID образа ОС для использования
    fraction  = 20
    platform  = "standard-v3"
    meta      = "userdata.cfg"
    stopping  = true
  }
  "zabbix" = {
    vm_name   = "zabbix"              # Имя ВМ
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 20                     # Объём диска в ГБ
    disk_name = "zabbix-ubuntu-disk"  # Название диска
    template  = "fd89a0bj96o8sp88tn6s" # ID образа ОС для использования
    fraction  = 20
    platform  = "standard-v3"
    meta      = "userdata.cfg"
    stopping  = true
  }
  # "vm-3" = {
  #   vm_name   = "vm-3-debian-12"       # Имя ВМ
  #   vm_cpu    = 2                      # Кол-во ядер процессора
  #   ram       = 2                      # Оперативная память в ГБ
  #   disk      = 20                     # Объём диска в ГБ
  #   disk_name = "vm-3-debian-12-disk"  # Название диска
  #   template  = "fd8qh3qqmbq35jn5920n" # ID образа ОС для использования
  #   fraction  = 20
  #   platform  = "standard-v3"
  #   stopping  = true
  # }
}
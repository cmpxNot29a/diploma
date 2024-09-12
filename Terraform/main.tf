resource "yandex_compute_disk" "boot-disk" {
  for_each = var.virtual_machines
  name     = each.value["disk_name"]
  type     = "network-hdd"
  zone     = "ru-central1-a"
  size     = each.value["disk"]
  image_id = each.value["template"]
}

resource "yandex_vpc_network" "network-1" {
  name = "network1"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}
resource "yandex_compute_instance" "virtual_machine" {
  for_each                  = var.virtual_machines
  name                      = each.value["vm_name"]
  allow_stopping_for_update = each.value["stopping"]
  platform_id               = each.value["platform"]
  metadata = {
    enable-oslogin = false
    user-data      = "${file("${each.value.meta}")}"

  }

  resources {
    cores         = each.value["vm_cpu"]
    memory        = each.value["ram"]
    core_fraction = each.value["fraction"]
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk[each.key].id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }
  scheduling_policy {
    preemptible = true
  }
} 
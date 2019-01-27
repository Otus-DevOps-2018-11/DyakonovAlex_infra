output "apps_external_ip" {
  value = "${module.app.apps_external_ip}"
}

output "apps_local_ip" {
  value = "${module.app.apps_local_ip}"
}

output "db_external_ip" {
  value = "${module.db.db_external_ip}"
}

output "db_local_ip" {
  value = "${module.db.db_local_ip}"
}

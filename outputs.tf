output "ws_id"{
value = [for x in split(",", chomp(data.local_file.env_info.content)): split(":", x)[1] if contains(split(":", x), "Schematics")][0]
}

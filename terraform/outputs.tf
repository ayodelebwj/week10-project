output "java_node_ip" {
    value = ec2_instance.java-node.public_ip
}

output "nginx_node_ip" {
    value = ec2_instance.nginx-node.public_ip
}
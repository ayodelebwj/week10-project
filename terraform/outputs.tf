output "java_node_ip" {
    value = aws_instance.java-node.public_ip
}

output "nginx_node_ip" {
    value = aws_instance.nginx-node.public_ip
}
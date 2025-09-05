Docker Apache Webserver

This project demonstrates how to set up and run an Apache webserver inside a Docker container, including serving custom HTML content using Docker volumes. It's a great exercise for learning containerization, Docker volume management, and port mapping.

🔹 Features

Runs the official Apache HTTP server (httpd) in a Docker container.

Maps host directory to container’s webroot using volumes.

Custom HTML content served from local directory.

Supports multiple containers on different ports.

🔹 Prerequisites

Docker
 installed on your system.

Optional: VirtualBox + Linux VM if running Docker in a virtualized environment.

🔹 Setup Instructions

Clone the repository

git clone <your-repo-url>
cd apache-docker


Add your HTML content
Place your custom HTML files in the repository directory (or a folder like public-html/).

Run Apache container

docker run -dit --name apache-custom -p 8080:80 -v $(pwd):/usr/local/apache2/htdocs/ httpd


-p 8080:80 → Maps host port 8080 to container port 80.

-v $(pwd):/usr/local/apache2/htdocs/ → Mounts current folder as the webroot.

Verify
Open your browser:

http://localhost:8080


You should see your custom HTML page.

🔹 Manage Containers

List running containers:

docker ps


Stop container:

docker stop apache-custom


Remove container:

docker rm apache-custom


Enter container shell:

docker exec -it apache-custom bash

🔹 Notes / Tips

Use different ports (8081, 8082, etc.) if running multiple webservers simultaneously.

If container names conflict, either remove the old container or give a new name.

This setup can be extended with Docker Compose for multi-container applications.

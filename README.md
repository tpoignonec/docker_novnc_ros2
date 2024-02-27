# docker_novnc_ros2
Docker containing a development environment for ROS2 applications with a novnc server for in-browser display of GUIs

```bash
docker build -t  tpoignonec/docker_novnc_ros2 .
docker run --rm -it -p 8080:8080  tpoignonec/docker_novnc_ros2
```

```bash
set NOVNC_SERVER_IP=172.17.0.1
http://172.17.0.1:8080/vnc.html
```
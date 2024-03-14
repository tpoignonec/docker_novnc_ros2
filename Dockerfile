FROM ros:humble

# Install supervisor, VNC, & X11 packages
RUN set -ex; \
    apt-get update; \
    apt-get install -y \
    bash \
    net-tools \
    novnc \
    tigervnc-standalone-server \
    xvfb \
    supervisor \
    websockify \
    fluxbox

# Install IDE, git, and other utilities
RUN apt-get update; \
    apt-get install -y \
    git \
    terminator

# Create a password for tigerVNC (provides password, then password confirmation)
# RUN printf "1234567ROS2\n1234567ROS2\n" | vncpasswd

# RUN apt-get update && apt-get install -y xfce4

# Setup environment variables
ENV HOME=/home \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:1.0 \
    DISPLAY_WIDTH=1920 \
    DISPLAY_HEIGHT=1080

COPY . /app
CMD ["/app/entrypoint.sh"]
EXPOSE 8080

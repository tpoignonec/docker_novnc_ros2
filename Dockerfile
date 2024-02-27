FROM ros:humble

# Install supervisor, VNC, & X11 packages
RUN set -ex; \
    apt-get update; \
    apt-get install -y \
      bash \
      net-tools \
      novnc \
      supervisor \
      fluxbox \
      x11vnc \
      xvfb

# Install IDE, git, and other utilities
RUN apt-get update; \
    apt-get install -y \
    git \
    terminator

# Setup environment variables
ENV HOME=/home \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768

COPY . /app
CMD ["/app/entrypoint.sh"]
EXPOSE 8080

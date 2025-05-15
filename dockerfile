FROM dorowu/ubuntu-desktop-lxde-vnc

USER root

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    gconf2 \
    libgtk-3-0 \
    libasound2 \
    libnss3 \
    libxss1 \
    libxtst6 \
    libx11-xcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    xdg-utils \
    git \
    unzip \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# Download en installeer Cursor
RUN wget https://download.cursor.sh/linux/cursor.deb -O /tmp/cursor.deb \
    && apt install -y /tmp/cursor.deb \
    && rm /tmp/cursor.deb

# Start standaard op
CMD ["/startup.sh"]

# Specify base image
FROM dlang2/dmd-ubuntu

# Create project root directory and copy source into it
RUN mkdir -p /app
WORKDIR /app
COPY . /app/

# Install system dependencies
RUN apt-get install libssl-dev libevent-dev -y

# Create user/group to be specified for privilege lowering. 
# Running with full permissions may expose system to exploit
RUN useradd --user-group --create-home --shell /bin/false app
USER app

# Build project
RUN dub build

# Port 
EXPOSE 8080

# Run executable
CMD ./server
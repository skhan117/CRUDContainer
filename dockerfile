# Base image is Node Alpine
FROM node:alpine 

# Make a directory inside the container and set it as working directory 
RUN mkdir /data
ADD . /data
WORKDIR /data

# Copy package.json into working directory; install app dependencies
COPY package*.json ./
RUN npm install

# Expose container port 4000 
EXPOSE 4000

# Copy application source code into container
COPY . .

# Run the application 
CMD ["npm", "start"]

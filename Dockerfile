# Use 1science/sbt as parent image
FROM 1science/sbt

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
# RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 9000 

# Define default command. 
CMD sbt "run"

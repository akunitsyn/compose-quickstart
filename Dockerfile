FROM mageai/mageai:latest

ARG USER_CODE_PATH=/home/src/${PROJECT_NAME}


# Add non-root user for Mage service
RUN adduser --disabled-password --gecos '' mage && adduser mage mage

# Grant the user permissions to the Mage related directories
RUN mkdir /home/src/mage_data; chown -R mage /home/src/mage_data
RUN mkdir /home/src/${PROJECT_NAME}; chown -R mage /home/src/${PROJECT_NAME}

# RUN pip3 install -r /home/src/requirements.txt

# Set the Mage user
USER mage

ENV PYTHONPATH="${PYTHONPATH}:/home/mage/.local/lib/python3.10/site-packages"

WORKDIR /home/src

CMD ["/bin/sh", "-c", "/app/run_app.sh"]
    
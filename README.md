Copy the systemd service files to make sure the containers start at boot.

    sudo cp services/* /etc/systemd/service
    sudo systemctl enable biketag-db.service
    sudo systemctl start biketag-db.service
    sudo systemctl enable biketag-api.service
    sudo systemctl start biketag-api.service

Decrypt and copy the env file into the biketag-api container. I literally used the system clipboard.

    docker exec -ti biketag-api bash -l

Then restart nginx

    docker exec biketag-api sv nginx restart



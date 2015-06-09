Copy the systemd service files to make sure the containers start at boot.

    sudo cp services/* /etc/systemd/system
    sudo systemctl enable biketag-db.service
    sudo systemctl start biketag-db.service
    sudo systemctl enable biketag-api.service
    sudo systemctl start biketag-api.service
    sudo systemctl enable biketag-db-backup.timer
    sudo systemctl start biketag-db-backup.timer

Decrypt and copy the env file into the biketag-api container. something like this should work

    docker exec -i biketag-api-dev bash -c "cat - > ~app/biketag-api/.env" < decrypted_env

Then restart nginx

    docker exec biketag-api sv nginx restart



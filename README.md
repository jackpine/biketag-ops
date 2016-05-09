After deploying (bin/deploy) copy the systemd service files to the
docker host to make sure the containers start at boot.

    # pseudo code
    scp services/* /etc/systemd/system

    me@local> ssh host
    root@host> systemctl enable biketag-db.service
    root@host> systemctl start biketag-db.service
    root@host> systemctl enable biketag-api.service
    root@host> systemctl start biketag-api.service
    root@host> systemctl enable biketag-db-backup.timer
    root@host> systemctl start biketag-db-backup.timer


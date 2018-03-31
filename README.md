After deploying (bin/deploy)

# Ops

Clone the ops repo, which some services rely on. Though I think it's
just the backup script. Maybe we could just copy that to simplify
things.

# Services

copy the systemd service files to the docker host to make sure the
containers start at boot.

    # pseudo code
    scp services/* /etc/systemd/system

    me@local> ssh host
    root@host> systemctl enable biketag-db.service
    root@host> systemctl start biketag-db.service
    root@host> systemctl enable biketag-api.service
    root@host> systemctl start biketag-api.service
    root@host> systemctl enable biketag-db-backup.timer
    root@host> systemctl start biketag-db-backup.timer


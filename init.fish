if status is-interactive
    test -z "$autovenv_announce"
        and set -g autovenv_announce "1"
    eval (autovenv)
end
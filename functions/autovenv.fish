# Defined in - @ line 2
function autovenv --on-variable PWD -d "Automatic activation of Python virtual enviroments"
    for autovenv_find_dir in (string split -n '/' "$PWD")
        set autovenv_find_tree "$autovenv_find_tree/$autovenv_find_dir"
        if test -e "$autovenv_find_tree/bin/activate.fish"
            set autovenv_source "$autovenv_find_tree/bin/activate.fish"
            if test "$autovenv_announce" = "1"
                set autovenv_name_old "$autovenv_name"
                set -g autovenv_name (basename "$autovenv_find_tree")
            end
            break
        end
    end
    if test -z "$VIRTUAL_ENV" -a -e "$autovenv_source"
        source "$autovenv_source"
        if test "$autovenv_announce" = "1"
            echo "Activated Virtual Enviroment ($autovenv_name)"
        end
    else if test -n "$VIRTUAL_ENV"
        set autovenv_dir (string match -n "$VIRTUAL_ENV*" "$PWD")
        if test -z "$autovenv_dir" -a ! -e "$autovenv_source"
            deactivate
            if test "$autovenv_announce" = "1"
                echo "Deactivated Virtual Enviroment ($autovenv_name)"
                set -e autovenv_name
                set -e autovenv_name_old
            end
        else if test -z "$autovenv_dir" -a -e "$autovenv_source"
            deactivate
            source "$autovenv_source"
            if test "$autovenv_announce" = "1"
                echo "Switched Virtual Enviroments ($autovenv_name_old => $autovenv_name)"
            end
        end
    end
end

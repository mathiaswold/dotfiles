function set-workon
    if ! set -q VIRTUAL_ENV
        echo "ERROR: Virtual environment not activated"
        return 1
    end
    vf connect
    echo $PWD > $VIRTUAL_ENV/.project
    echo "'workon $(basename $VIRTUAL_ENV)' set to $PWD"
end

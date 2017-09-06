#!/bin/sh

cwd=`pwd`
target=$HOME

linkFiles() {
    shopt -s dotglob
    files="$1/*"
    for f in $files
    do
        targetFile=${f#$cwd}
        if [[ -d "$f" ]]; then
            if [[ ! -d "$target$targetFile" ]]; then
                mkdir -p "$target$targetFile"
            fi
            linkFiles $f
        elif [[ -f "$f" ]]; then
            ignored=`isIgnored $targetFile`
            if [[ $ignored != true ]]; then
                ln -s "$f" "$target$targetFile"
            fi
        fi
    done
    shopt -u dotglob
}

isIgnored() {
    ignoreFile="$cwd/.dotignore"
    if [[ -f "$ignoreFile" ]]; then
        while IFS= read -r ignore
        do
            if [[ $1 == *$ignore* ]]; then
                echo "true"
                return
            fi
        done < "$ignoreFile"
    fi

    echo "false"
}

linkFiles $cwd

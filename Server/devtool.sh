#!/bin/bash -e
case "$1" in
     -submit )
          if [ -z "$2" ]; then
               echo "Usage: sh dev_helper.sh submit commit_msg_here; commit msg does not exist!"
               exit 1
          else
               git add .
               git commit -am "$2"
               git push 
          fi
          ;;
     -goto )
          if [ -z "$2" ]; then
               echo "Usage: sh dev_helper.sh -goto branch_name; branch_name does not exist!"
               exit 1
          else
               git checkout "$2"
          fi
          ;;
     -install )
          chmod u+x devtool
          ;;
     -hopen )
          heroku apps:open --app foodtrek
          ;;
      -help )
          echo "=== git related options ==="
          echo "-submit [commit message]"
          echo "       automatically add ., commit and push"
          echo "-goto [name of branch you want to switch to]"
          echo "       goto a certain branch"          
          echo "=== heroku related options ==="
          echo "-hopen"
          echo "       open the heroku page on your default browser"          
          ;;
     * ) 
          echo "Usage: $1 not found"
          exit 1

          
esac
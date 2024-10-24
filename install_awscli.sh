#!/bin/bash

# Script to install awscli into machine 

echo "Please enter an option (Install, Uninstall):"
read action

echo "Enter an Operating System (e.g., Macos, Linux):"
read parameter

case $parameter in
    Macos)
        if [[ $action == "Install" ]]; then
            curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
            unzip awscli-bundle.zip
            ./awscli-bundle/install -b ~/bin/aws
            export PATH=~/bin:$PATH
            export PATH=~/.local/bin:$PATH
            echo "AWS CLI installed on MacOS."
        elif [[ $action == "Uninstall" ]]; then
            rm -rf ~/bin/aws
            echo "AWS CLI uninstalled from MacOS."
        else
            echo "Invalid action."
        fi
        ;;
        
    Linux)
        if [[ $action == "Install" ]]; then
            curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
            unzip awscli-bundle.zip
            ./awscli-bundle/install -b ~/bin/aws
            export PATH=~/bin:$PATH
            export PATH=~/.local/bin:$PATH
            echo "AWS CLI installed on Linux."
        elif [[ $action == "Uninstall" ]]; then
            rm -rf ~/bin/aws
            echo "AWS CLI uninstalled from Linux."
        else
            echo "Invalid action."
        fi
        ;;
        
    *)
        echo "Invalid OS selected."
        ;;
esac

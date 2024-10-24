# Script to install awscli into machine 

# AWS CLI version	Supported Python version
# 1.32.0 – current	Python 3.8+
# 1.27.0 – 1.31.x	Python 3.7+
# 1.20.0 – 1.26.x	Python 3.6+
# 1.19.0 – 1.19.x	Python 2.7+, Python 3.6+
# 1.17 – 1.18.x	Python 2.7+, Python 3.4+
# 1.0 – 1.16.x	Python 2.6 and older, Python 3.3 and older

echo "Please enter an option (Macos, Linux, Windows):"
read action

case $action in
    Macos)
# if[ "$Install" = "Yes" ]; then
#Curl latest version aws-cli V1 download to your local "awscli-bundle-1.16.312.zip" for specific version
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"

# unzip aws-cli version
unzip awscli-bundle.zip

#given path to insall awscli 
./awscli-bundle/install -b ~/bin/aws

# Fetch particluar path and stored Set the Path 
echo $PATH | grep ~/bin     # See if $PATH contains ~/bin (output will be empty if it doesn't)#
export PATH=~/bin:$PATH     # Add ~/bin to $PATH if necessary#

# check aws cli is installed or not "ls -a ~"
export PATH=~/.local/bin:$PATH

#verify with command aws --version

# else
# command to remove aws-cli from your machine 
# sudo rm -rf /usr/local/aws
# sudo rm /usr/local/bin/aws

# or remove forlder sudo rm ~/.aws/

Linux)
#Curl latest version aws-cli V1 download to your local "awscli-bundle-1.16.312.zip" for specific version
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"

unzip awscli-bundle.zip

./awscli-bundle/install -b ~/bin/aws

echo $PATH | grep ~/bin   #  // See if $PATH contains ~/bin (output will be empty if it doesn't)
export PATH=~/bin:$PATH   # // Add ~/bin to $PATH if necessary

ls -a ~

export PATH=~/.local/bin:$PATH

aws --version

    echo "Invalid option selected."
        ;;
esac


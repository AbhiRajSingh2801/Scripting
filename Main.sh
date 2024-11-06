#!/bin/bash

# Ask for the user's input
echo "Please enter an option (start, stop, restart, status):"
read action

# Ask for additional parameter at runtime
echo "Enter a parameter (e.g., service name):"
read parameter

# Handle different cases
case $action in
    start)
        echo "Starting $parameter..."
        # Add the command to start the service or task
        ;;
    stop)
        echo "Stopping $parameter..."
        # Add the command to stop the service or task
        ;;
    restart)
        echo "Restarting $parameter..."
        # Add the command to restart the service or task
        ;;
    status)
        echo "Checking the status of $parameter..."
        # Add the command to check the status of the service or task
        ;;
    *)
        echo "Invalid option selected."
        ;;
esac

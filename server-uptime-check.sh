#!/bin/bash
# Script to check server uptime

# Get the current uptime
uptime


uptime >> /var/log/uptime.log

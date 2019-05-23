#!/bin/bash
echo "Launching and reconfigure GITLAB"
ssh service restart

/opt/gitlab/embedded/bin/runsvdir-start &
gitlab-ctl reconfigure
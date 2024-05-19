#!/bin/bash
echo $ADMIN_ID
echo $ADMIN_PWD
echo $NODE_URL
docker run --name jenkins --rm -p 8080:8080 --env NODE_URL=$NODE_URL --env JENKINS_ADMIN_ID=$ADMIN_ID --env JENKINS_ADMIN_PASSWORD=$ADMIN_PWD jenkins:jcasc

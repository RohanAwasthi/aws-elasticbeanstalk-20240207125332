#!/bin/bash
mkdir s3  
aws s3 cp s3://devex-deploy/node.zip /root/.jenkins/workspace/custom-actions/Sonarcopilot-demo-0702-1/s3
unzip s3/node.zip -d /root/.jenkins/workspace/custom-actions/Sonarcopilot-demo-0702-1/s3
cd s3
export PATH=$PATH:/opt/sonar-scanner-5.0.1.3006-linux/bin/
sonar-scanner -Dsonar.projectKey=aws-elb-node -Dsonar.sources=. -Dsonar.host.url=http://172.190.72.81:9000 -Dsonar.login=06bb2f03cc09a44128c2c1d6134c6b56d0e4c734

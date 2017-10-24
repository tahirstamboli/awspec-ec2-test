#!/bin/bash

sudo gem install awspec
instanceId='i-0be73cee10514d744' rake spec:ec2

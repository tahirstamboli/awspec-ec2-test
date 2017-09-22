#!/bin/bash

sudo gem install awspec
instanceId='i-0c459cb6433c2d945' rake spec:ec2

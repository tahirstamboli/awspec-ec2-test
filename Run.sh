#!/bin/bash

sudo gem install awspec
instanceId='i-07b8999b5f8370fe6' rake spec:ec2

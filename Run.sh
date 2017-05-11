#!/bin/bash

sudo gem install awspec
instanceId='i-0344c439054c9b91d' rake spec:ec2

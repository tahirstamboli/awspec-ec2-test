#!/bin/bash

sudo gem install awspec
instanceId='i-08f658669b4319d6a' rake spec:ec2

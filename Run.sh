#!/bin/bash

sudo gem install awspec
instanceId='i-000e8498474ac7108' rake spec:ec2

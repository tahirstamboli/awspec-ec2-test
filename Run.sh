#!/bin/bash

sudo gem install awspec
instanceId='i-0daad53b61a160174' rake spec:ec2

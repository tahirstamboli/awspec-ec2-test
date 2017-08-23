#!/bin/bash

sudo gem install awspec
instanceId='i-0c2abe34da04d3103' rake spec:ec2

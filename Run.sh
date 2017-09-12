#!/bin/bash

sudo gem install awspec
instanceId='i-0c2abe34da04' rake spec:ec2

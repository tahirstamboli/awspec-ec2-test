#!/bin/bash

sudo gem install awspec
instanceId='i-049c9cd2097ff3d13' rake spec:ec2

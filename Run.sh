#!/bin/bash

sudo gem install awspec
instanceId='i-0dda552a8f298bba2' rake spec:ec2

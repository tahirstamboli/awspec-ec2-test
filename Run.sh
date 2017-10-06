#!/bin/bash

sudo gem install awspec
instanceId='i-00dce21211d8ba2cf' rake spec:ec2

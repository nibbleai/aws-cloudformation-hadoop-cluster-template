#!/bin/bash

aws cloudformation create-stack \
--template-body file://$(pwd)/template.yaml \
--stack-name ${STACK_NAME} \
--parameters \
    ParameterKey=KeyName,ParameterValue=${SSH_KEY_NAME} \
    ParameterKey=VPCCidr,ParameterValue=${VPC_CIDR}

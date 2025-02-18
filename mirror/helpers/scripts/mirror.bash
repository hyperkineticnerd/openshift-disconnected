#!/bin/bash

function mirror {
    echo $1
    oc mirror --v2 --config $2 $3
}

mirror "Platform OCP" manifests/platform-v2.yaml file://platform/openshift
mirror "RedHat Operators" manifests/redhat-v2.yaml file://operators/redhat
# mirror "Certified Operator" manifests/certified.yaml file://operators/certified
# mirror "Community Operator" manifests/community.yaml file://operators/community

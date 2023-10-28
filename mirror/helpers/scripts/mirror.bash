#!/bin/bash

function mirror {
    echo $1
    oc mirror --config $2 $3
}

mirror "Platform OCP" manifests/platform.yaml file://platform/openshift
mirror "RedHat Operators" manifests/redhat.yaml file://operators/redhat
mirror "Certified Operator" manifests/certified.yaml file://operators/certified
mirror "Community Operator" manifests/community.yaml file://operators/community


#!/bin/bash

declare TOP=${PWD}
declare target="docker://quay.developer.hkn.lab:8443"
declare opts="--dest-skip-tls"

function push {
    echo "Pushing $1 to Container Registry"
    cd $TOP/$2
    for mirror_tar in $(ls mirror_*.tar); do
        oc mirror $opts --from $mirror_tar $target
    done
}

push "OpenShift Platform" platform/openshift
push "Red Hat Operator Index" operators/redhat
push "Certified Operator Index" operators/certified
push "Community Operator Index" operators/community

#!/bin/bash

#declare CHANNEL=stable-4.13
declare CHANNEL=stable-4.12
#declare VERSION=4.13.14
declare VERSION=4.12.36
declare OS=linux

curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/$CHANNEL/openshift-client-$OS-$VERSION.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/$CHANNEL/openshift-install-$OS-$VERSION.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/$CHANNEL/oc-mirror.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/$CHANNEL/opm-$OS-$VERSION.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/$CHANNEL/ccoctl-$OS-$VERSION.tar.gz

#!/bin/bash

declare CHANNEL=stable-4.16
declare VERSION=${1:-4.16.14}
declare OS=${2:-linux}

curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${VERSION}/openshift-install-${OS}-${VERSION}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${VERSION}/openshift-client-${OS}-${VERSION}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${VERSION}/oc-mirror.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${VERSION}/opm-${OS}-${VERSION}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${VERSION}/ccoctl-${OS}-${VERSION}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/mirror-registry/1.3.11/mirror-registry.tar.gz

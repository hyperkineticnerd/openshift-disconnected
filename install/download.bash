#!/bin/bash

declare CHANNEL='stable-4.16'

declare VERSION='4.16'
declare RELEASE=${1:-4.16.14}
declare OS=${2:-linux}
declare CPU='amd64'
declare VARIANT='rhel9'

declare MREGVER='1.3.11'
declare ROSAVER='1.2.46'
declare RHCOSVER='4.17.0'

curl -OL https://mirror.openshift.com/pub/openshift-v4/dependencies/rhcos/${VERSION}/${RHCOSVER}/rhcos-${RHCOSVER}-x86_64-aws.x86_64.vmdk.gz

curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/openshift-install-${OS}-${RELEASE}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/openshift-install-rhel9-amd64.tar.gz

curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/openshift-client-${OS}-${CPU}-${VARIANT}-${RELEASE}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/ccoctl-${OS}-${VARIANT}-${RELEASE}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/opm-${OS}-${RELEASE}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/rosa/${ROSAVER}/rosa-${OS}.tar.bz

curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/oc-mirror.${VARIANT}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/mirror-registry/${MREGVER}/mirror-registry.tar.gz

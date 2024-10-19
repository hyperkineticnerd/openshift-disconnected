#!/bin/bash

declare CHANNEL='stable-4.16'

# OpenShift Version (X.Y)
declare VERSION='4.16'

# OpenShift Release Version (X.Y.Z)
declare RELEASE=${1:-4.16.14}

# OS for binaries, possible values: linux, mac, windows
declare OS=${2:-linux}

# CPU for binaries, possible values: amd64 or arm64
declare CPU='amd64'

# OS Variant for specific binaries, possible values: rhel8 or rhel9
declare VARIANT='rhel9'

# Mirror Registry Version
declare MREGVER='1.3.11'

# ROSA binary Version
declare ROSAVER='1.2.46'

# Red Hat CoreOS Version for OpenShift Release, must be highest (X.Y.Z) but still equal or lesser than the OpenShift Release Version
declare RHCOSVER='4.17.0'

# OpenShift Installer Binaries
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/openshift-install-${OS}-${RELEASE}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/openshift-install-rhel9-amd64.tar.gz

# OpenShift Client Binaries
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/openshift-client-${OS}-${CPU}-${VARIANT}-${RELEASE}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/ccoctl-${OS}-${VARIANT}-${RELEASE}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/opm-${OS}-${RELEASE}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/rosa/${ROSAVER}/rosa-${OS}.tar.bz

# Disconnected Container Registry Binaries
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${RELEASE}/oc-mirror.${VARIANT}.tar.gz
curl -OL https://mirror.openshift.com/pub/openshift-v4/clients/mirror-registry/${MREGVER}/mirror-registry.tar.gz

# AWS AMI Base Image
curl -OL https://mirror.openshift.com/pub/openshift-v4/dependencies/rhcos/${VERSION}/${RHCOSVER}/rhcos-${RHCOSVER}-x86_64-aws.x86_64.vmdk.gz

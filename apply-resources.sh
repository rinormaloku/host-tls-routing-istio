#!/bin/bash

oc apply -f  <(ls *.yaml | xargs -I{} istioctl kube-inject -f {})
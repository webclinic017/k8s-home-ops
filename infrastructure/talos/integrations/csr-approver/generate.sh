#!/usr/bin/env bash
rm -rf charts
echo "# This manifest was generated by automation. DO NOT EDIT." > ./csr-approver.yaml
kustomize build \
  --enable-helm \
  --load-restrictor=LoadRestrictionsNone \
  . \
  >> ./csr-approver.yaml
rm -rf charts
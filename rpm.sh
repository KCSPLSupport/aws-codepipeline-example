#!/usr/bin/env bash

m4 -D__OUTPUTDIR__=$DIR/RPMS/ rpm.spec.m4 > rpm.spec.out
rpmbuild -ba rpm.spec.out &> build.log

cat build.log


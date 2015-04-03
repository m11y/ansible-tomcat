#! /bin/bash

mkdir -p roles

ln -sfn ../../ roles/ansible-tomcat

vagrant up --no-provision

vagrant provision

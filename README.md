# Cameos

[![Build Status](https://travis-ci.org/idxp/cameos.svg?branch=master)](https://travis-ci.org/idxp/cameos)

The IDXP Analytics collection of Ansible roles.

* supervisor
* beanstalkd
* ruby through rbenv
* python through miniconda
* python through pyenv
* nginx
* postgresql
* consul
* memcached

## Usage

**On a local VM with Vagrant**

Install [`vagrant`](https://www.vagrantup.com/downloads.html) and run `vagrant up` from the project root.

**On AWS with Packer**

Compile [`packer`](http://packer.io) from the project's [master branch](https://github.com/mitchellh/packer), change the credentials of the `packer.json` file to match your environment and run `packer build packer.json`

**With Ansible**

Install `ansible` from [source](http://docs.ansible.com/intro_installation.html#running-from-source).

For a remote server

```
PYTHONUNBUFFERED=1 ANSIBLE_FORCE_COLOR=true ansible-playbook -i '52.7.110.193,' --extra-vars='deploy_user=ubuntu' --user=ubuntu playbook.yml
```

And to apply to yourself

```
PYTHONUNBUFFERED=1 ANSIBLE_FORCE_COLOR=true ansible-playbook playbook.yml --connection=local --extra-vars='deploy_user=cameosuser'
```

# Cameos

[![Build Status](https://travis-ci.org/idxp/cameos.svg?branch=master)](https://travis-ci.org/idxp/cameos)

The IDXP Analytics collection of Ansible roles.

* java 7
* solr 5
* supervisor
* consul
* beanstalkd
* ruby (rbenv)
* python (miniconda and pyenv)
* nginx
* postgresql
* memcached
* redis
* rabbitmq

## Usage

Try to respect the order listed in the sample `playbook.yml` file when using more than one role.

**On a local VM with Vagrant**

Install [`vagrant`](https://www.vagrantup.com/downloads.html) and run `vagrant up` from the project root.

**On AWS with Packer**

Compile [`packer`](http://packer.io) from the project's [master branch](https://github.com/mitchellh/packer), change the credentials of the `packer.json` file to match your environment and run `packer build packer.json`

**With Ansible**

Install `ansible` from [source](http://docs.ansible.com/intro_installation.html#running-from-source).

For a remote server

```
PYTHONUNBUFFERED=1 ANSIBLE_FORCE_COLOR=true ansible-playbook -i '8.8.8.8,' --extra-vars='deploy_user=ubuntu' --user=ubuntu playbook.yml
```

And to apply to yourself

```
PYTHONUNBUFFERED=1 ANSIBLE_FORCE_COLOR=true ansible-playbook playbook.yml --connection=local --extra-vars='deploy_user=cameosuser'
```

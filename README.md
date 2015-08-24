Description
===========

Would you like to know more? https://github.com/pquerna/distsync

Requirements
============

Currently requires Linux AMD64 to run binaries. FreeBSD and Darwin (Mac OS X) binaries are available

Attributes
==========

```
node['distsync']['shared_secret']
node['distsync']['api_key']

node['distsync']['username']
node['distsync']['storage_bucket']

node['distsync']['provider']
node['distsync']['region']

node['distsync']['notify']
node['distsync']['storage']

node['distsync']['output_dir']
```

https://github.com/pquerna/distsync#reference

Usage
=====

Add `distsync::client` to the run_list of all your servers that will receive the deployment bundle. This will run as a daemon to watch for new bundles that get uploaded.

Add `distsync::server` on your CI (buildbot, jenkins server) and run `distsync upload myapp-1.0.tar.gz` to push your bundle to the CDN.

https://github.com/pquerna/distsync#usage


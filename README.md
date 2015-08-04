[![Puppet Forge](http://img.shields.io/puppetforge/v/stbenjam/hash_resources.svg)](https://forge.puppetlabs.com/stbenjam/hash_resources)
[![Build Status](https://travis-ci.org/stbenjam/puppet-hash_resources.svg?branch=master)](https://travis-ci.org/stbenjam/puppet-hash_resources)

# hash\_resources

This module takes a hash called 'resources' and uses that to pass each one to
create\_resources.

Often modules on puppet forge contain defines, which can't be used by an
External Node Classifier directly, and you often need to write a wrapper
class.

Using this module, you can pass many defines, classes, and built-in types
for creation.

## Examples

```puppet
class { 'hash_resources':
  resources => {
    'file': {
      '/tmp/foo': {
        'ensure'   => 'present',
        'content' => 'test',
      },
      '/tmp/bar': {
        'ensure'   => 'present',
        'content' => 'test',
      }
    }
  }
}
```

```yaml
---
classes:
  hash_resources:
    resources:
      file:
        /tmp/foo:
          ensure: present
          content: test
        /tmp/bar:
          ensure: present
          content: test
```

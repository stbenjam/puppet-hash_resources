# Class: hash_resources
# ===========================
#
# hash_resources can help you pass a hash of defined types, built-in
# resources, other classes, etc.  This is best used with an ENC.
#
# Parameters
# ----------
#
# $resources::   A hash of resources
# $realize::     A hash of virtual resources to realize
#
# Examples
# --------
#
# @example
#  class { 'hash_resources':
#    resources => {
#      'file': {
#        '/tmp/foo': {
#          'ensure'   => 'present',
#          'content' => 'test',
#        },
#        '/tmp/bar': {
#          'ensure'   => 'present',
#          'content' => 'test',
#        }
#      }
#    }
#  }
#
# @example
#  ---
#  classes:
#    hash_resources:
#      resources:
#        file:
#          /tmp/foo:
#            ensure: present
#            content: test
#          /tmp/bar:
#            ensure: present
#            content: test
#      realize:
#        File[/tmp/myfile]: 
#        Ssh_authorized_key[root]: 
#
# Authors
# -------
#
# Stephen Benjamin <stephen@redhat.com>
#
# Copyright
# ---------
#
# Copyright 2015 Stephen Benjamin
#
class hash_resources(
  $resources = {},
  $realize = {},
) {

  hash_resources($resources)
  hash_realize($realize)

}

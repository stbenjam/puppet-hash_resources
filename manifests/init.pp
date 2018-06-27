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
  Hash $resources = {},
) {

  hash_resources($resources)

}

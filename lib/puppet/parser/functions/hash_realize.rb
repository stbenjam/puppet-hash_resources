# A wrapper to take multiple virtual resources of different types and realize them
# Example hash:
# ---
# classes:
#   hash_resources:
#     realize:
#       File[/tmp/myfile]: 
#       Ssh_authorized_key[root]: 
module Puppet::Parser::Functions
  newfunction(:hash_realize) do |args|
    hash = args[0]
    raise Puppet::ParserError, "Must provide a hash" unless hash.is_a? Hash

    Puppet::Parser::Functions.autoloader.load(:realize) \
      unless Puppet::Parser::Functions.autoloader.loaded?(:realize)

    Puppet::Parser::Functions.autoloader.load(:any2array) \
      unless Puppet::Parser::Functions.autoloader.loaded?(:any2array)

    realizearray=function_any2array([hash])
    function_realize([realizearray])
  end
end

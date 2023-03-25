# Manifest that installs puppet-lint version 2.5.0
package { 'puppet-lint':
  ensure   => '2.1.0',
  provider => 'gem'
}

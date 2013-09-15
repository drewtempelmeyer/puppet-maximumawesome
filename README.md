# puppet-maximumawesome

Sets up [maximum-awesome](https://github.com/square/maximum-awesome) for you so you don't have to.

[![Build Status](https://travis-ci.org/drewtempelmeyer/puppet-maximumawesome.png?branch=master)](https://travis-ci.org/drewtempelmeyer/puppet-maximumawesome)

## Usage

To use the default maximum-awesome repository, simply

`include maximumawesome`

To use a fork of maximum-awesome

```
class {'maximumawesome':
	repo => 'drewtempelmeyer/vimfiles'
}
```


## Required Puppet Modules

* `boxen`
* `boxen-repository`

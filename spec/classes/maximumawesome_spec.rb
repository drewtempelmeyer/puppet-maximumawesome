require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'maximumawesome' do
  let :facts do
    {
      :boxen_user   => 'drew',
      :boxen_srcdir => '/Users/drew/src'
    }
  end

  it do
    should contain_repository('maximumawesome').with({
      :source   => 'square/maximum-awesome',
      :provider => 'git',
      :path     => '/Users/drew/src/maximumawesome'
    })

    should contain_exec('rake').with({
      :cwd => '/Users/drew/src/maximumawesome',
      :creates => '/Users/drew/.vimrc'
    })
  end
end

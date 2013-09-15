require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'maximumawesome' do
  let :facts do
    {
      :boxen_user   => 'drew',
      :boxen_srcdir => '/Users/drew/src',
      :boxen_home   => '/Users/drew'
    }
  end

  it do
    should contain_repository('maximumawesome')

    should contain_exec('rake').with({
      :command => 'cd /Users/drew/src/maximumawesome && rake',
      :creates => '/Users/drew/.vim'
    })
  end
end

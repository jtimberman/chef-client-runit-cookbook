require 'spec_helper'

describe 'chef-client-runit::default' do

  describe command('sv status chef-client') do
    its(:exit_status) { should eq(0) }
    its(:stdout) { should match(/^run: chef-client/) }
  end
end

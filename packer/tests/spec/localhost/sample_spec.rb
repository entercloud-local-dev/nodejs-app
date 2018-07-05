require 'spec_helper'

pkgs = [ 'ruby2.3', 'ruby2.3-dev', 'nodejs', 'git' ]

pkgs.each do | pkg |
  describe package( pkg ), :if => os[:family] == 'ubuntu' do
    it { should be_installed }
  end
end


describe port(3000) do
  it { should be_listening }
end

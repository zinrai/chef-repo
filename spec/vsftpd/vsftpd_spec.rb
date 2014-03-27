require 'spec_helper'

describe package('vsftpd') do
  it { should be_installed }
end

describe service('vsftpd') do
  it { should be_enabled }
  it { should be_running }
end

describe port(21) do
  it { should be_listening }
end

describe file('/etc/vsftpd/vsftpd.conf') do
  it { should be_file }
  it { should be_mode 600 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its(:content) { should match /anon_root=\/var\/vsftpd/ }
end

describe file('/var/vsftpd') do
  it { should be_directory }
  it { should be_mode 755 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

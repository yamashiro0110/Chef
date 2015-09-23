require 'serverspec'

set :backend, :exec

# httpdがインストールされている
describe package("httpd") do
  it { should be_installed }
end

# httpdプロセスが稼働している
describe process("httpd") do
  it { should be_running }
end

# TCP80番で待ち受けている
describe port("80") do
  it { should be_listening.with("tcp") }
end

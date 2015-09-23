require "serverspec"

set :backend, :exec

describe user("vagrant") do
  # vagrantユーザが存在する
  it { should exist }
  # vagrantユーザはwheelに所属している
  it { should belong_to_group "vagrant" }
end

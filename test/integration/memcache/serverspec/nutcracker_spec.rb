require 'serverspec'

# Required by serverspec
set :backend, :exec

describe 'NutCracker' do
  it 'is listening on port 22121' do
    expect(port(22_121)).to be_listening
  end

  it 'has a running service of nutcracker' do
    expect(service('nutcracker')).to be_running
  end
end

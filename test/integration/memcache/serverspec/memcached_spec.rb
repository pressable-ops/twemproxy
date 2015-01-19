require 'serverspec'

# Required by serverspec
set :backend, :exec

describe 'Memcache Daemon' do
  it 'is listening on port 11211' do
    expect(port(11_211)).to be_listening
  end

  it 'has a running service of memcached' do
    expect(service('memcached')).to be_running
  end
end

require 'serverspec'

# Ensure boost/version header there
describe file('/usr/local/include/boost/version.hpp') do
    it { should be_file }
    its(:content) { should match /define BOOST_LIB_VERSION "\d_\d\d"/ }
end

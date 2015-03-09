rm -rf ~vagrant/.rbenv

# Clone the rbenv repo from github
echo 'Download rbenv'
git clone https://github.com/sstephenson/rbenv.git ~vagrant/.rbenv
cd ~vagrant/.rbenv

# Add rbenv to PATH
echo 'export PATH="~vagrant/.rbenv/bin:$PATH"' >> ~vagrant/.profile
echo 'eval "$(rbenv init -)"' >> ~vagrant/.profile
source ~vagrant/.profile

# Install ruby-build
echo 'Download ruby-build'
git clone https://github.com/sstephenson/ruby-build.git ~vagrant/.rbenv/plugins/ruby-build

# Install and use ruby 2.2.0
echo 'Install ruby 2.2.0'
CONFIGURE_OPTS="--disable-install-rdoc" rbenv install 2.2.0
rbenv rehash
rbenv global 2.2.0
rbenv rehash

# Install bundler
gem install bundler


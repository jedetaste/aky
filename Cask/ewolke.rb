cask 'nextcloud' do
  version '2.3.3.3'
  sha256 '9d0e6b439e607dc830817e2656a8535c2d6b87fe0002c56f2921fc596a23d5b1'

  url "http://cdn-cloud.anykeyit.ch/cloud/ewolke/client/Nextcloud-#{version}.pkg"
  name 'eWolke'
  homepage 'https://ewolke.ch/'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'ch.anykeyit.ewolke.desktopclient'
end

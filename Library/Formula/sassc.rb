require 'formula'

class Sassc < Formula
  homepage 'https://github.com/hcatlin/sassc'
  url 'https://github.com/hcatlin/sassc/archive/v1.0.1.tar.gz'
  sha1 '69e7d97264b252593a3307330a96a5ccdc2813b5'

  depends_on :autoconf
  depends_on :automake
  depends_on :libtool
  depends_on 'libsass'

  def install
    system "autoreconf -i"
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end

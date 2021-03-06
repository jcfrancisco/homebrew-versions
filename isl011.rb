require 'formula'

class Isl011 < Formula
  homepage 'http://www.kotnet.org/~skimo/isl/'
  url 'ftp://gcc.gnu.org/pub/gcc/infrastructure/isl-0.11.1.tar.bz2'
  sha1 'd7936929c3937e03f09b64c3c54e49422fa8ddb3'

  keg_only 'Conflicts with isl in main repository.'

  head 'http://repo.or.cz/w/isl.git'

  depends_on 'gmp4'

  def install
    args = [
      "--prefix=#{prefix}",
      "--disable-dependency-tracking",
      "--with-gmp-prefix=#{Formula.factory('gmp').opt_prefix}"
    ]

    system "./configure", *args
    system "make install"
  end
end

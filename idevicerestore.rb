require 'formula'

class Idevicerestore < Formula
  head 'https://github.com/libimobiledevice/idevicerestore.git'

  depends_on 'make' => :build
  depends_on 'libimobiledevice' => :build
  depends_on 'usbmuxd' => :build
  depends_on 'libplist' => :build
  depends_on 'libzip' => :build
  depends_on 'openssl' => :build
  depends_on 'automake' => :build
  depends_on 'autoconf' => :build
  depends_on 'libtool' => :build
  depends_on 'pkg-config' => :build
  

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

end

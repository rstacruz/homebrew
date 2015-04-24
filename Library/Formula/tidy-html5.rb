require 'formula'

class TidyHtml5 < Formula
  homepage 'http://www.html-tidy.org/'
  url 'https://github.com/htacg/tidy-html5/archive/tag-4.9.25.tar.gz'
  version "4.9.25"

  depends_on 'cmake'

  def install
    ENV.deparallelize
    cd "build/cmake"
    system "cmake", "../..", "-DCMAKE_INSTALL_PREFIX=#{prefix}"
    system "make"
    system "make install"
  end

  test do
    system bin/"tidy5"
  end
end

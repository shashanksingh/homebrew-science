require "formula"

class Openbr < Formula
  homepage "http://www.openbiometrics.org/"
  url "https://github.com/biometrics/openbr/releases/download/v0.5.0/OpenBR-0.5.0-osx.zip"
  version "0.5.0"

  depends_on "cmake" => :build
  depends_on "qt5"
  depends_on "opencv"
  depends_on "eigen"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/br", "-version"
  end
end

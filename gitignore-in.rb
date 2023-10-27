require "formula"

class GitignoreIn < Formula
  homepage "https://github.com/gitignore-in/gitignore-in"
  head "https://github.com/gitignore-in/gitignore-in.git"
  version "v0.2.0"

  if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
    url "https://github.com/gitignore-in/gitignore-in/releases/download/v0.2.0/gitignore-in-aarch64-apple-darwin-v0.2.0.tar.gz"
    sha256 "4d934798f90a7d5c1da9c29c2127867698bb9a7df24da105eb1b936a18da9cc3"
  elsif Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
    url "https://github.com/gitignore-in/gitignore-in/releases/download/v0.2.0/gitignore-in-x86_64-apple-darwin-v0.2.0.tar.gz"
    sha256 "35fbabf95337bf3e8871ce4c610c3caa72fa7ce1d5f52042ce3c55e3dfa1206d"
  end

  def install
    bin.install "gitignore.in" => "gitignore.in"
  end
end

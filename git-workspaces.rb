require "language/node"

class GitWorkspaces < Formula
  desc "Collection of useful git extensions that enhance one's local dev environment"
  homepage "https://github.com/viqueen/git-workspaces"
  url "https://registry.npmjs.org/@labset/git-workspaces/-/git-workspaces-2.0.1.tgz"
  sha256 "47584ddcef46c59c4a263cfaa1a56e7a40ac3d1970430522d749c454a820c4fd"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end
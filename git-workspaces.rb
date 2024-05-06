require "language/node"

class GitWorkspaces < Formula
  desc "Collection of useful git extensions that enhance one's local dev environment"
  homepage "https://github.com/viqueen/git-workspaces"
  url "https://registry.npmjs.org/@labset/git-workspaces/-/git-workspaces-4.1.0.tgz"
  sha256 "6c0a000bb5dabca74af8b15362338a7780839e9059af246090aad8791ba6dca1"
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
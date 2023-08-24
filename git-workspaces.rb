require "language/node"

class GitWorkspaces < Formula
  desc "Collection of useful git extensions that enhance one's local dev environment"
  homepage "https://github.com/viqueen/git-workspaces"
  url "https://registry.npmjs.org/@labset/git-workspaces/-/git-workspaces-2.0.2.tgz"
  sha256 "40216bcc9a4ed4c373d30f40008a3677967d25134c15edb617f2dba17968f6bc"
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
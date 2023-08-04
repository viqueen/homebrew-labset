require "language/node"

class GitWorkspaces < Formula
  desc "Collection of useful git extensions that enhance one's local dev environment"
  homepage "https://github.com/viqueen/git-workspaces"
  url "https://registry.npmjs.org/@labset/git-workspaces/-/git-workspaces-1.0.1.tgz"
  sha256 "83c5178671aaa1104abc556b2647dfe974b9fd723899da4150167750a82f3e3e"
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
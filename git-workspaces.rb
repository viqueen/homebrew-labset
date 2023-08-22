require "language/node"

class GitWorkspaces < Formula
  desc "Collection of useful git extensions that enhance one's local dev environment"
  homepage "https://github.com/viqueen/git-workspaces"
  url "https://registry.npmjs.org/@labset/git-workspaces/-/git-workspaces-2.0.0.tgz"
  sha256 "f65629d332ed40f84607523e41228866e8c4fde30029be2d72f2ffd097c7435e"
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
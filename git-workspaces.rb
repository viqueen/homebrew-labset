require "language/node"

class GitWorkspaces < Formula
	desc "Collection of useful git extensions that enhance one's local dev environment"
	homepage "https://github.com/viqueen/git-workspaces"
	url "https://registry.npmjs.org/@labset/git-workspaces/-/git-workspaces-5.1.0.tgz"
	sha256 "9159e31950562ee22bd0a1ab94cd659184337f5e2abd15ac5c1a3ccf6890a594"
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

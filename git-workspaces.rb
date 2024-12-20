require "language/node"

class GitWorkspaces < Formula
	desc "Collection of useful git extensions that enhance one's local dev environment"
	homepage "https://github.com/viqueen/git-workspaces"
	url "https://registry.npmjs.org/@labset/git-workspaces/-/git-workspaces-4.2.2.tgz"
	sha256 "93247deb8f370221283757424cd292c15e133579cd05424dd1f0dcc5a8c7562f"
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

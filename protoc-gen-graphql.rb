require "language/node"

class ProtocGenGraphql < Formula
	desc "A protoc plugin to generate GraphQL schema from protobuf files"
	homepage "https://github.com/viqueen/protoc-gen-graphql"
	url "https://registry.npmjs.org/@labset/protoc-gen-graphql/-/protoc-gen-graphql-1.0.0.tgz"
	sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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

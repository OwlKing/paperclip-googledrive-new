# -*- encoding: utf-8 -*-
#require File.expand_path('../lib/paperclip_googledrive/version', __FILE__)
$:.push File.expand_path("../lib", __FILE__)
require "paperclip/version"

Gem::Specification.new do |spec|
  spec.name          = "paperclip-googledrive"
  spec.version       = PaperclipGoogleDrive::VERSION
  spec.authors       = ['Shoaib Malik']
  spec.email         = ["shoaib2109@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.summary       = %q{Extends Paperclip with Google Drive storage}
  spec.description   = %q{paperclip-googledrive extends paperclip support of storage for google drive storage}
  spec.homepage      = "https://github.com/shoaibmalik786/paperclip-googledrive"

  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.files         = Dir["lib/**/*"] + ["README.md", "LICENSE", "paperclip-googledrive.gemspec"]
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.0.0"
  spec.license       = "MIT"

  spec.add_dependency "paperclip"
  spec.add_dependency 'google-api-client', "~> 0.5"

  spec.add_development_dependency "rake", "~> 10.0"
end

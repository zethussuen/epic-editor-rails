# -*- encoding: utf-8 -*-
require File.expand_path('../lib/epic-editor-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["zethus"]
  gem.email         = ["zethus.suen@gmail.com"]
  gem.description   = "Rails 3.2/4.x asset gem for EpicEditor"
  gem.summary       = "Rails 3.2/4.x asset gem for EpicEditor"
  gem.homepage      = "https://github.com/zethussuen/epic-editor-rails"
  gem.licenses      = ["MIT License"]

  gem.files         = Dir["{app,lib,vendor}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  gem.name          = "epic-editor-rails"
  gem.require_paths = ["lib"]
  gem.version       = Epic::Editor::Rails::VERSION

  gem.add_dependency "railties", ">= 3.2", "< 5.0"
end
require_relative 'lib/calendar_china/version'

Gem::Specification.new do |spec|
  spec.name          = "calendar_china"
  spec.version       = CalendarChina::VERSION
  spec.authors       = ["JohnnyTing"]
  spec.email         = ["JohnnyTing2DingXu@gmail.com"]

  spec.summary       = %q{China's Calendar.}
  spec.description   = %q{China's Calendar.}
  spec.homepage      = "https://github.com/JohnnyTing/calendar_china"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/JohnnyTing/calendar_china"
  spec.metadata["changelog_uri"] = "https://github.com/JohnnyTing/calendar_china"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "activesupport", '~> 6.0.2', '>= 6.0.2.2'
end

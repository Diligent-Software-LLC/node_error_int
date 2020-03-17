require './lib/node_error_int/version'

Gem::Specification.new do |spec|

  spec.name                  = "node_error_int"
  spec.version = NodeErrorInt::VERSION
  spec.authors               = ["Bradley J. Tannor", "Diligent Software LLC"]
  spec.email                 = ["bradleytannor@gmail.com"]
  spec.summary               = %q{A Node type exception interface.}
  spec.description           = %q{A Node type exception interface. Donations support
continuous improvement and maintenance. The aim is a reliable, integrable,
and endurable NodeError library. Make a donation at the project's collective
page: https://opencollective.com/nodeerror. One-time and recurring donations
are available at $1, $2, $4, $8, and $16. Greatly appreciated.}
  spec.homepage              = "https://docs.diligentsoftware.org/nodeerror"
  spec.license               = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.5")

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] =
      "https://github.com/Diligent-Software-LLC/node_error_int"
  spec.metadata['changelog_uri']   =
      "https://docs.diligentsoftware.org/nodeerror/interface#changelog"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development and testing dependencies
  spec.add_development_dependency 'bundler', '~> 2.1.2'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'

  # Gem specific runtime dependencies
  spec.add_runtime_dependency 'data_structure_error', '~> 1.2.0'

end



lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jruby_autolink/version"

Gem::Specification.new do |spec|
  spec.name          = "jruby_autolink"
  spec.version       = JRubyAutolink::VERSION
  spec.authors       = ["Charles Oliver Nutter"]
  spec.email         = ["headius@headius.com"]

  spec.summary       = %q{A fast autolinker for JRuby based on autolink-java.}
  spec.homepage      = "https://github.com/headius/jruby-autolink"

  spec.platform      = "java"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.requirements << 'jar org.nibor.autolink, autolink, 0.8.0'

  spec.add_runtime_dependency 'jar-dependencies'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end

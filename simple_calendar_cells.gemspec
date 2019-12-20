# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_calendar/cells/version'

Gem::Specification.new do |spec|
  spec.name          = 'simple_calendar_cells'
  spec.version       = SimpleCalendar::Cells::VERSION
  spec.authors       = ['Imamul Akhyar']
  spec.email         = ['imamulakhyar93@gmail.com']

  spec.summary       = 'Simple calendar in Cells.'
  spec.description   = 'Simple calendar helper in Cells.'
  spec.homepage      = 'https://github.com/imamulakhyar93/simple_calendar_cells'
  spec.license       = 'MIT'

  # # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  #   spec.metadata['homepage_uri'] = spec.homepage
  #   spec.metadata['source_code_uri'] = "TODO: Put your gem's public repo URL here."
  #   spec.metadata['changelog_uri'] = "TODO: Put your gem's CHANGELOG.md URL here."
  # else
  #   raise 'RubyGems 2.0 or newer is required to protect against ' \
  #     'public gem pushes.'
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'cells', '>= 4.0.0', '<= 5.0.0'
  spec.add_dependency 'simple_calendar', '~> 2.3.0'
  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'cells-erb'
  spec.add_development_dependency 'cells-rails'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rails'
  spec.add_development_dependency 'rake', '~> 10.0'
end

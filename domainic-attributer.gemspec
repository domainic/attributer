# frozen_string_literal: true

Gem::Specification.new do |spec|
  gem_version = '0.3.0'
  semver      = '0.3.0'
  repo_url    = 'https://github.com/domainic/attributer'
  home_url    = 'https://domainic.org'

  spec.name        = 'domainic-attributer'
  spec.version     = gem_version
  spec.authors     = ['Aaron Allen']
  spec.email       = ['hello@aaronmallen.me']
  spec.homepage    = home_url
  spec.summary     = 'A toolkit for creating self-documenting, type-safe class attributes with built-in validation, ' \
                     'coercion, and default values.'
  spec.description = 'Your domain objects deserve better than plain old attributes. Level up your DDD game with ' \
                     'powerful, configurable, and well-documented class attributes that actually know what they want ' \
                     'in life!'
  spec.license     = 'MIT'

  spec.required_ruby_version = '>= 3.2'

  spec.files = Dir[
    '{lib,sig}/**/*',
    'docs/USAGE.md',
    '.yardopts',
    'LICENSE',
    'README.md',
    'CHANGELOG.md'
  ].reject do |file|
    File.directory?(file)
  end
  spec.require_paths = ['lib']

  spec.metadata = {
    'bug_tracker_uri' => "#{repo_url}/issues",
    'changelog_uri' => "#{repo_url}/releases/tag/#{semver}",
    'documentation_uri' => "https://rubydoc.info/gems/domainic-attributer/#{gem_version}",
    'homepage_uri' => home_url,
    'rubygems_mfa_required' => 'true',
    'source_code_uri' => "#{repo_url}/tree/#{semver}",
  }

  spec.add_dependency 'zeitwerk', '~> 2.7'
end

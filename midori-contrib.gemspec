require './lib/midori-contrib'

Gem::Specification.new do |s|
  s.name                     = 'midori-contrib'
  s.version                  = MidoriContrib::VERSION
  s.required_ruby_version    = '>=2.2.6'
  s.date                     = Time.now.strftime('%Y-%m-%d')
  s.summary                  = 'Various extensions for midori'
  s.description              = 'Various extensions officially supported for midori'
  s.authors                  = ['HeckPsi Lab']
  s.email                    = 'business@heckpsi.com'
  s.require_paths            = ['lib']
  s.files                    = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec|.resources)/}) } \
    - %w(README.md CONTRIBUTOR_COVENANT_CODE_OF_CONDUCT.md Gemfile Rakefile em-midori.gemspec .gitignore .rspec .codeclimate.yml .rubocop.yml .travis.yml logo.png Rakefile Gemfile)
  s.homepage                 = 'https://github.com/heckpsi-lab/midori-contrib'
  s.metadata                 = { 'issue_tracker' => 'https://github.com/heckpsi-lab/midori-contrib/issues' }
  s.license                  = 'MIT'
  s.add_runtime_dependency     'em-midori', '~> 0.3'
end
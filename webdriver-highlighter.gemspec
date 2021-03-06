lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'webdriver-highlighter'
  spec.version       = '0.1.0'
  spec.author        = 'Alex Rodionov'
  spec.email         = 'p0deje@gmail.com'
  spec.summary       = 'Automatically highlight used elements in Selenium-WebDriver'
  spec.description   = 'Automatically highlight used elements in Selenium-WebDriver'
  spec.homepage      = 'https://github.com/p0deje/webdriver-highlighter'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'selenium-webdriver'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end

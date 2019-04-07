Gem::Specification.new do |s|
  s.name = "weathergolf"
  s.version = "0.0.3"
  s.date = %q{2019-04-04}
  s.summary = %q{gem for weather API requests }
  s.files = [
      "lib/weathergolf.rb"
  ]
  s.require_paths = ["lib"]
  s.authors = ["X14130114"]
  s.email = 'x14130114@student.ncirl.ie'
  s.homepage = 'https://github.com/x14130114'

  s.add_dependency "httparty", "0.13.1"
end

require 'rake'
require 'rake/gempackagetask'

$LOAD_PATH.unshift("lib")
require 'assert_db_rejects'

spec = Gem::Specification.new do |s|
  s.name              = "assert_db_rejects"
  s.version           = AssertDbRejects::VERSION
  s.summary           = "Test database level constraints with ActiveRecord"
  s.homepage          = "http://github.com/JackC/assert_db_rejects"

  s.files             = FileList["[A-Z]*", "{bin,lib,rails,test}/**/*"]

  s.author            = "Jack Christensen"
  s.email             = "jack@jackchristensen.com"
end

Rake::GemPackageTask.new( spec ) do |pkg|
  pkg.need_tar = true
  pkg.need_zip = true
end



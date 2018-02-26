# this is a generated file, to avoid over-writing it just delete this comment
begin
  require 'jar_dependencies'
rescue LoadError
  require 'org/nibor/autolink/autolink/0.8.0/autolink-0.8.0.jar'
end

if defined? Jars
  require_jar 'org.nibor.autolink', 'autolink', '0.8.0'
end

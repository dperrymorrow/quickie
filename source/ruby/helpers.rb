# can put whatever other helpers you need here such as simulating rails helpers...
require 'yaml'

def render(type, filename, locals = {})
  filename += '.haml'
  path = 'source/haml/'
  
  file = File.join(Dir.pwd, "#{path}#{filename}")
  Haml::Engine.new(File.read file ).render(self, locals)
end

def load_data(filename)
  filename += '.yml'
  path     = 'source/yml/'
  file     = File.join(Dir.pwd, "#{path}#{filename}")
  YAML.load(File.read file)
end

def debug(obj)
  "<pre><code>#{YAML.dump(obj)}</code></pre>"
end



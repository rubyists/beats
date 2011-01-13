require "pathname"
$LOAD_PATH.unshift(File.expand_path("../", __FILE__))

# Allows for pathnames to be easily added to
class Pathname
  def /(other)
    join(other.to_s)
  end
end

# The Beat library, by ebeats
module Beat
  autoload :VERSION, "beat/version"
  ROOT = Pathname($LOAD_PATH.first) unless Beat.const_defined?("ROOT")
  LIBDIR = ROOT/:lib unless Beat.const_defined?("LIBDIR")
end
require "time"
require "beat/time"

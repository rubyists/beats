require "pathname"
begin
  require "bacon"
rescue LoadError
  require "rubygems"
  require "bacon"
end

begin
  if (local_path = Pathname.new(__FILE__).dirname.join("..", "lib", "beat.rb")).file?
    require_relative "../%s" % local_path
  else
    require "beat"
  end
rescue LoadError => l
  warn l
  require "rubygems"
  require "beat"
end

Bacon.summary_on_exit

describe "Spec Helper" do
  it "Should bring our library namespace in" do
    Beat.should == Beat
  end
end



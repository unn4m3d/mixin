require "./spec_helper"

class Helper
  @foo = "ABC"

  delegate downcase, to: @foo, access: :protected

  def to_s
    downcase
  end
end

describe Mixin do
  # TODO: Write tests

  it "works" do
    Helper.new.to_s.should eq("abc")
  end
end

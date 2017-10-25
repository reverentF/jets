require_relative "../../../spec_helper"

describe Lam::Process::ControllerProcessor do
  before(:all) do
    @event = { "we" => "love", "using" => "Lambda" }
    @context = {"test" => "1"}
  end
  let(:processor) do
    Lam::Process::ControllerProcessor.new(
      JSON.dump(@event),
      JSON.dump(@context),
      'handlers/controllers/posts.create' # handler
    )
  end

  describe "ControllerProcessor" do
    it "find public_instance_methods" do
      processor.run
      expect(processor.event).to eq(@event)
    end
  end
end
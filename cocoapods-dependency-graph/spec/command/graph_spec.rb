require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Graph do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ graph }).should.be.instance_of Command::Graph
      end
    end
  end
end


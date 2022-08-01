require 'rails_helper'

RSpec.describe Task, type: :model do
    let(:task) {Task.new(name: 'example task', description: 'implement test code')}

    it 'taskが有効であること' do
        expect(task).to be_valid 
    end 
end 
require 'rails_helper'

RSpec.describe Task, type: :model do
    let(:task) {Task.new(name: 'example task', description: 'implement test code')}

    it 'taskが有効であること' do
        expect(task).to be_valid 
    end 

    it 'nameが必須であること' do 
        task.name = ''
        expect(task).to_not be_valid 
    end 

    it 'nameは50文字以内であること' do 
        task.name = 'd'*51
        expect(task).to_not be_valid
    end 
end 
require 'rails_helper'

describe 'タスク管理機能', type: :system do 
    describe '一覧表示機能' do 
        before do 
            #タスクを作成しておく
            visit new_task_path
            fill_in "Name",	with: task_name 
            click_button 'create'
        end 
    
        context '新規作成画面で名称を入力した時' do 
            let(:task_name) {'英語の勉強をする'}

            it '正常に登録される' do 
                expect(page).to have_selector '.alert-success', text: '英語の勉強をする'
            end 
        end 
    end 
end 
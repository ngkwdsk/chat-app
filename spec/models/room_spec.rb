require 'rails_helper'

RSpec.describe Room, type: :model do

	before do
		@room = FactoryBot.build(:room)
	end

	describe 'チャットルーム新規登録' do
		context '新規登録できるとき' do
			it "nameの値が存在すれば登録できる" do
				expect(@room).to be_valid
			end
		end
		context '新規登録できないとき' do
			it "nameが空では登録できない" do
				@room.name = ''
				@room.valid?
				expect(@room.errors.full_messages).to include("Name can't be blank")
			end
		end
	end
end

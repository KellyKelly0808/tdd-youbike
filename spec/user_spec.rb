require 'user'

RSpec.describe User do
      context '會員' do
        it "是會員" do
          #Arrange
          user = User.new(member: true)

          #Assert
          expect(user).to be_member 
        end
    end

    context '非會員' do
      it "不是會員" do
        #Arrange
        user = User.new

        #Assert
        expect(user).not_to be_member
      end
    end
  end


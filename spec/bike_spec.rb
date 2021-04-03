require 'bike'
require 'timecop'
require'rental'

RSpec.describe Bike do
  context'非會員租借' do
        it  " 4 小時內，費率為每 30 分鐘 10 元 " do
          # Arrange
          user = User.new
          bike = Bike.new
          rental = Rental.new(user)

          #Act
          rental.rent(bike)
           Timecop.travel( 65 * 60 ) #時間前進65分鐘
          rental.return(bike)
          # Assert
          expect(rental.charge).to be 50
        end
   end

  end
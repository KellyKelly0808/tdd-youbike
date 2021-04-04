class Bike
    attr_reader :rent_at, :return_at

    def rent!
        @rent_at = Time.now
        @return_at = nil
    end
    
    def return!
        @return_at = Time.now
    end

    # def returned?
    #     @return_at == nil
    # end

    def rental_duration_mins
        if returned?
             (@return_at - @rent_at).to_i / 60.0
        else
            (Time.now - @rent_at).to_i / 60.0
        end
    end

    private
    def returned?
        @return_at != nil
    end
end
















































# class Bike
  
#     def initialize(user)
#       @user = user
#       @start_time =  nil
#       @end_time   =  nil
#       @charge = 0 
#     end
     
#     def rent
#        @start_time = Time.now
    
    
#     end

     
#      def back
#         @end_time   = Time.now
#      end

#      def  charge
#         if  @user.is_member?
#           total = (@end_time - @start_time).to_f / 60 / 60
#           # member price 
#           if total <= 0.5
#              return  5 
#           elsif  total > 0.5 && total <= 4  
#             return (5 + (total - 0.5) * 10 * 2)
#           elsif   total > 4 && total <= 8
#             return (5 + 3.5 * 10 * 2 + (total - 4) * 20 * 2)
#           elsif    total >= 8
#             return (5 +3.5 * 10 * 2 + 4 * 20 * 2 + (total - 8) * 40 * 2 ) 
#           end

#         else
#            if total <= 4
#             return  ((total - 4) * 10 * 2)
#             elsif  total > 4 && total <= 8
#             return (4 * 10 * 2 + (total - 8) * 20 * 2)
#             elsif   total >= 8
#               return ( 4 * 10 * 2 + 4 * 20 * 2 + (total - 8) * 40 * 2 ) 
#             end
#           # non member price
#         end
#       end
           
           
           
           
           
           
    


# end
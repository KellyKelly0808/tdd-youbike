class User
   attr_reader :member

         def initialize(options={})
            @member = options[:member]
         end

         def member?
            @member != nil
            # 只要不是nil就是會員
         end
      end
















# class User
#    def initialize
#     @member = member
#    end

#    def is_member?
#       @member
#    end
 

# end
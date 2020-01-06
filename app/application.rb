# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime on or after 12 is the afternoon.

class Application

    def call(env)
        resp = Rack::Response.new

        time = Kernel.rand(1..24)

        resp.write "#{time}\n"

        if time <= 11
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end




# __________________________________
# class Application
 
#     def call(env)
#       resp = Rack::Response.new
   
#       num_1 = Kernel.rand(1..20)
#       num_2 = Kernel.rand(1..20)
#       num_3 = Kernel.rand(1..20)
   
#       if num_1==num_2 && num_2==num_3
#         resp.write "You Win"
#       else
#         resp.write "You Lose"
#       end
   
#       resp.finish
#     end
   
#   end
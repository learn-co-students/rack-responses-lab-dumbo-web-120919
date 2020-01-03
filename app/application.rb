class Application

    def call(env)
        return [ 200, {'Content-Type' => 'text/html'}, noon_time]
    end

    def noon_time
        Time.now. hour < 12 ? ["<em>Good Morning!</em>"] : ["<em>Good Afternoon!</em>"]
    end
end
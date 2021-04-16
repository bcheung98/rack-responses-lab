class Application

    def call(env)
        resp = Rack::Response.new
        msg = Time.now.to_s.split(" ")[1].split(":")[0].to_i < 12 ? "Good Morning!" : "Good Afternoon!"
        resp.write "#{msg}"
        resp.finish
    end

end
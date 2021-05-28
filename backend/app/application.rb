class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/exercises/)
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "does this work?"}.to_json ]]

    else
      resp.write "Path Not Found"

    end

    resp.finish
  end

end

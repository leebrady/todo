require 'restclient'

module RequestLogger
  def get(url)
    puts "Sending request to #{url}"
    super
  end
end

class HttpClient
  def initalize(client = RestClient)
    @client = client 
  end

def get(url)
  @client.get(url)
end
end

http = HttpClient.new
http.get('www.rubyguides.com')

http.extend(RequestLogger)
http.get('www.rubyguides.com')

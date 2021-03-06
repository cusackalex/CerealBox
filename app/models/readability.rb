module Readability
  BASE_URL = "https://www.readability.com/api/content/v1/parser?"

  def self.scrape(url)
    response = HTTParty.get("#{BASE_URL}url=#{url}/&token=#{ENV['READABILITY_TOKEN']}")

    if response['short_url']
      html = JSON.parse(response['content'])
      return html
    end
  end

end


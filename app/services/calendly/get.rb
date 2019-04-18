class Calendly::Get
  def self.call(url)
    new(url).call
  end

  def initialize(url)
    @url = url
  end

  def call
    HTTParty.get(@url, headers: headers)
  end

  private

  def headers
    {
      "X-TOKEN" => Rails.application.credentials.calendly_api_key
    }
  end
end

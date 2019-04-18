require "rails_helper"

describe Calendly::Get do
  describe "#call" do
    it "hits the correct url" do
      expected_url = "https://www.google.com"
      expect(HTTParty).
        to receive(:get).
        with(expected_url, anything)

      described_class.call(expected_url)
    end

    it "puts the api key in the header" do
      api_key = "API_KEY"
      expected_url = "https://www.google.com"
      allow(Rails).
        to receive_message_chain(:application, :credentials, :calendly_api_key).
        and_return(api_key)
      expect(HTTParty).
        to receive(:get).
        with(anything, headers: { "X-TOKEN" => api_key })

      described_class.call(expected_url)
    end
  end
end

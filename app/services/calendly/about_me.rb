class Calendly::AboutMe
  def self.fetch
    new.call
  end

  def fetch
    Calendly::Get.call("https://calendly.com/api/v1/users/me")
  end
end

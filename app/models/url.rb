class Url < ApplicationRecord
  belongs_to :user

  def shorten_url
    update(alphanumeric: alphanumeric, shortened_url: "http://localhost:3000/#{alphanumeric}")
  end

  def alphanumeric
    @secure_random ||= SecureRandom.alphanumeric(6)
  end
end

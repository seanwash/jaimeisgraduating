class Message < ActiveRecord::Base
  validates :author, presence: true
  validates :content, presence: true
  validates :owner, presence: true

  validates :email,
            presence: true,
            format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }

  def author_profile_image_url
    email_address = email.downcase
    hash = Digest::MD5.hexdigest(email_address)

    "http://www.gravatar.com/avatar/#{hash}"
  end
end

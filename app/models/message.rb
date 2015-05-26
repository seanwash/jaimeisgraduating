class Message < ActiveRecord::Base
  validates :author, presence: true
  validates :content, presence: true
  validates :owner, presence: true

  validates :email,
            presence: true,
            format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }

end

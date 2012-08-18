class Snippet < ActiveRecord::Base
  attr_accessible :code, :content, :language, :user_id

  belongs_to :user

  before_save { self.code = SecureRandom.hex(5) }
end

class Snippet < ActiveRecord::Base
  attr_accessible :code, :content, :language

  belongs_to :user

  before_save { self.code = SecureRandom.hex(5) }
end

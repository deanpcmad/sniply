class Snippet < ActiveRecord::Base
  # attr_accessible :code, :content, :language, :title, :desc

  belongs_to :user

  before_create { self.code = SecureRandom.hex(5) }

end
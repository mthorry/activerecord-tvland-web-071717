# => A show has many characters and has many actors through characters.

class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters

end
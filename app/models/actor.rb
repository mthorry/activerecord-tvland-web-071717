# => An actor has many characters and has many shows through characters.
# Write a method in the Actor class, #full_name, that returns the first and last name of an actor.
# Write a method in the Actor class, #list_roles, that lists all of the characters that actor has.

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end
  # binding.pry

  def list_roles
    # binding.pry
    self.characters.map {|char| "#{char.name} - #{char.show.name}"}
  end

end
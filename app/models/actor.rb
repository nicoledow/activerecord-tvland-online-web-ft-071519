class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, -> {distinct}, through: :characters
  has_many :friendships
  has_many :friends, through: :friendships
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    self.characters.map do |c|
      "#{c.name} - #{c.show.name}"
    end
  end
  
  def befriend(actor)
    friendships.create(friend: actor)
    actor.friendships.create(friend: self)
  end
  
  
end
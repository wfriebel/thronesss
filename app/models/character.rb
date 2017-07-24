class Character < ApplicationRecord
  belongs_to :team
  has_many :points

  def full_name
    if self.last_name
      "#{self.first_name} #{self.last_name}"
    else
      self.first_name
    end
  end
end

class Character < ActiveRecord::Base
  validates_presence_of :name, :race, :cclass, :age
  validates_length_of :name, :in => 4..100
  validates_length_of :race, :in => 6..50
  validates_numericality_of :age
  
end
# == Schema Information
#
# Table name: characters
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  race       :string(255)
#  cclass     :string(255)
#  age        :integer
#  created_at :datetime
#  updated_at :datetime
#


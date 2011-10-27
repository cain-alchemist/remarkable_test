require 'spec_helper'

describe Character do
  before(:all) do
    Character.create(name: "Ulrich", race: "Human", cclass: "Fighter", age: 20)
  end
  it "Should Validade the Presence of Name, Race, Class and Age at one Character"do
    should validate_presence_of :name,:race, :cclass, :age
  end
  it "Name should have a range of 4 to 100 characters" do
    should validate_length_of :name, :in => 4..100 
  end
  
  it "Race should have a range of 6 to 50 characters" do
    should validate_length_of :race, :in => 6..50
  end
  
  it "Age should be a number" do 
    should validate_numericality_of :age
  end
  
  it "It should raise exceptions when persisting an invalid character" do
    #expect{Character.create(name: nil, cclass: nil, age: "What?")}.to raise_error
    c = Character.new(name: nil, cclass: nil)
    c.invalid? should be_true
  end

  after(:all) do
    Character.delete_all
  end
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


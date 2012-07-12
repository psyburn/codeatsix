# == Schema Information
#
# Table name: people
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Person < ActiveRecord::Base
  has_many :submissions
  has_many :events, :through => :submissions
  

  #validates :person_id,  :presence => true
  validates :name,
            :presence => true

  validates :email,
            :presence => true,
            :uniqueness => true
 
end

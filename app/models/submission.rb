# == Schema Information
#
# Table name: submissions
#
#  id        :integer         not null, primary key
#  person_id :integer
#  event_id  :integer
#

class Submission < ActiveRecord::Base
  belongs_to :events
  belongs_to :person

  validates_presence_of :person_id
  validates_presence_of :event_id
  validates_uniqueness_of :person_id, :scope => :event_id, :message => "has already applied."

end

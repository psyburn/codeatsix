# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


events = [
  { :title => "Degustacija pive",
    :body => "<p> Degustirajmo pivu zajedno! </p>",
    :whatisit => 'meetup',
    :announcement => ' Degustirajmo pivu zajedno! ',
    :slug => 'piva',
    :scheduled_at => 2.months.from_now
  },

  { :title => "Online semafor hakiranje",
    :body => "<p> Radimo API za sve semafore u Hrvatskoj, posalji ulicu i dobijes stanje svih semafora. </p>",
    :whatisit => 'hackathon',
    :slug => 'semafor',
    :announcement => ' Hakirajmo semafore! ',
    :scheduled_at => 1.month.from_now
  }
]

Event.create!(events)

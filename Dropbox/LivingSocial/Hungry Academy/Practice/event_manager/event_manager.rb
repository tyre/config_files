require "csv"
require "sunlight"
require "./attendee.rb"
class EventManager
  def initialize(filename='event_attendees.csv')
    @file = CSV.open(filename, {headers: true, :header_converters => :symbol})
  end
  def print_names
    @file.each do |line|
      puts "#{line[:first_name]} #{line[:last_name]}"
    end
  end
  def print_numbers
    @file.each do |line|
      clean_number(line[:homephone])
    end
  end
  def clean_number(num)
    unless num=~/\D*[1]{0,1}(\d{3})\D*(\d{3})\D*(\d{4})/
      puts num
    end
    #{}"#{$1}#{$2}#{$3}"
  end
end

#test script
e=EventManager.new
e.print_numbers
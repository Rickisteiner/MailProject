class Organization < ActiveRecord::Base 
has_many :people 
end 
class Person < ActiveRecord::Base 
belongs_to :organization 
def name 
first_name + " " + last_name 
end 
end 

Make this code better & more performant if possible: Person.where("first_name LIKE '#{params[:first_name]}%' AND last_name LIKE '#{params[:last_name']}%' ").each do |p| puts "#{p.name}: #{p.organization.name}" end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

# Create Categories
i = Instance.new
i.name = "Better Alamance Ideas"
i.description = "Your ideas. Our community."
i.domain_name = "herokuapp.com"
i.layout = "application"
i.admin_name = "Derek Lackaff"
i.admin_email = "admin@betteralamance.org"
i.email = "admin@betteralamance.org"
i.save(:validation=>false)


si = SubInstance.new
si.short_name = "default"
si.name = "Your Default Sub Instance"
si.save(:validation=>false)

ba = SubInstance.new
ba.short_name = "ba-ideas"
ba.name = "Better Alamance Ideas"
ba.save(:validation=>false)

Instance.current = i
SubInstance.current = si
sub_instance = si

require 'activity'

u = User.new
u.login="Administrator"
u.password="admin"
u.first_name="Administrator"
u.last_name="Admin"
u.is_admin = true
u.is_root = true
u.password_confirmation="admin"
u.email="admin@admin.is"
u.save(:validate=>false)

Category.create(:name=>"Democracy", :description => "", :sub_instance_id=>sub_instance.id)
Category.create(:name=>"Equality", :description => "", :sub_instance_id=>sub_instance.id)
Category.create(:name=>"Future Vision", :description => "", :sub_instance_id=>sub_instance.id)
Category.create(:name=>"Environment", :description => "", :sub_instance_id=>sub_instance.id)
Category.create(:name=>"Social Innovation", :description => "", :sub_instance_id=>sub_instance.id)
Category.create(:name=>"Economy", :description => "", :sub_instance_id=>sub_instance.id)
Category.create(:name=>"Security", :description => "", :sub_instance_id=>sub_instance.id)
Category.create(:name=>"Information Technology", :description => "", :sub_instance_id=>sub_instance.id)


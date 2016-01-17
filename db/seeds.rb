# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Form.delete_all

a = Form.create(
  name: 'Heather Brysiewicz',
  email: 'h.a.brysiewicz', 
  city: 'San Diego',
  state: 'California',
  github: 'hbrysiewicz',
  twitter: 'caligoanimus',
  bio: 'I am a skilled and passionate programmer with experience across compiled and interpreted languages. As a naturally creative individual I maintain an extensive knowledge in emerging web technologies and find the close coupling of client-server to be both an artistic outlet as well as analytically challenging.'
)

a.skills.create(description: 'JavaScript')
a.skills.create(description: 'Ember')
a.skills.create(description: 'Node')
a.skills.create(description: 'Ruby')

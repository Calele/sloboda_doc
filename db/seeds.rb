# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Currency.create([{ title: 'UAH' }, { title: 'USD' }, { title: 'EUR' }])
Status.create([{title: 'to do'}, {title: 'doing'}, {title: 'done'}])
Client.create([{first_name: 'Darina', last_name: 'Rusanova', email: 'darina@mail.ru'}, {first_name: 'Anna', last_name: 'Kirichenko', email: 'anna@mail.ru'}])
Programmer.create([{first_name: 'Oleg', last_name: 'Kolomoec', email: 'oleg@mail.ru'}, {first_name: 'Anatoliy', last_name: 'Denshik', email: 'Calel@bk.ru'}])
Manager.create([{first_name: 'Pavel', last_name: 'Obod', email: 'pavel@mail.ru'}, {first_name: 'Liza', last_name: 'Gosteva', email: 'Liza@mail.ru'}])
Project.create([{name: 'stars', client_id: '1', curency_id: '1',  programmer_id: '1', manager_id: '1',  status_id: '1', date_of_start: '2013-07-01', deadline: '2013-07-15', totally: '200.15', paid: '100.10', to_pay: '100.05', comment: 'just a first comment' }, {client_id: '2', curency_id: '2', name: 'sloboda_doc', programmer_id: '2', manager_id: '1',  status_id: '2', date_of_start: '2013-05-01', deadline: '2013-07-01', totally: '150.25', paid: '25.10', to_pay: '125.15', comment: 'just a second comment' }])
ProgrammerProject.create([{programmer_id: '1', project_id: '1'}, {programmer_id: '2', project_id: '1'}])

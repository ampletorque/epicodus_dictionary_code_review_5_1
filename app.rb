require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/entry')

get('/') do
  @added = false
  @entries = Entry.all()
  erb(:index)
end

post('/') do
  @entries = Entry.all()
  @word = params.fetch('word')
  @definition = params.fetch('definition')
  new_entry = Entry.new(@word)
  new_definition = Definition.new(@definition)
  new_entry.add_definition(new_definition)
  new_entry.save()
  @added = true
  erb(:index)
end

get('/word/:id') do
  @entry = Entry.find(params.fetch('id').to_i())
  erb(:word)
end

post('/word/:id') do
  @definition = params.fetch('definition')
  new_definition = Definition.new(@definition)
  @entry = Entry.find(params.fetch('id').to_i())
  @entry.add_definition(new_definition)
  erb(:word)
end

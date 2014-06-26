require 'sinatra'
configure do
end
get '/' do
  redirect "/impactmapping"
end
get '/geeks' do
  @title="Mind Maps for Geeks"
  erb :geeks
end
get '/presentations' do
  @title="Presentations and slide shows"
  erb :presentations
end
get '/impactmapping' do
  @title="Impact Mapping"
  erb :impact_mapping
end
get '/mindmup-gold' do
  @title="MindMup Gold"
  erb :gold
end

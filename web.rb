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
get '/keyboard-shortcuts' do
  @title='Keyboard Shortcuts'
  erb :keyboard_shortcuts
end
get '/mouse-touch-operations' do
  @title='Mouse and Touch operations'
  erb :mouse_touch
end

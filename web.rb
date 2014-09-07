require 'sinatra'
configure do
end
get '/v/:version/:file' do
  send_file File.join(settings.public_folder, params[:file])
end
get '/' do
  @title="Discover MindMup"
  erb :home, :layout => false
end
get '/geeks' do
  @title="Mind Maps for Geeks"
  erb :geeks
end
get '/presentations' do
  @title="Presentations and slide shows"
  erb :presentations
end
get '/storyboards' do
  @title="MindMup Storyboards"
  erb :storyboards
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

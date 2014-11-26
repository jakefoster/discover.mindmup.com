require 'sinatra'
configure do
  set :static_host, 'http://static.mindmup.com'
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
get '/press' do
  @title='Press resources'
  erb :press
end
get '/mindmup-for-tablets' do
  @title='MindMup for Tablets and Phones'
  erb :mobile
end
get '/guide_mobile/:version' do
  @title="MindMup IOS Guide version #{params[:version]}"
  erb :guide_mobile, :layout=> false
end

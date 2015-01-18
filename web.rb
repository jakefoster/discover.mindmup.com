require 'sinatra'
configure do
  set :static_host, 'https://d1g6a398qq2djm.cloudfront.net'
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
  @description='Screenshots and facts about MindMup for bloggers and press'
  erb :press
end
get '/atlas' do
  @title='MindMup Atlas'
  @description='Publish and share mind maps online'
  erb :atlas
end
get '/mindmup-for-ios' do
  @title='MindMup for iPad and iPhone'
  erb :mobile
end
get '/guide_ios/:my_app_version/:my_doc_version' do
  halt 404 unless params[:my_app_version].to_f >= 3

  latest = 3
  if (params[:my_doc_version].to_f < latest) then
    @title="MindMup IOS Guide version #{latest}"
    @version=latest
    erb :guide_ios, :layout=> false
  else
    halt 304, "OK"
  end
end

require 'sinatra'
configure do
  set :cdn_host, ENV['CDN_HOST']
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
get '/hangouts' do
  @title='MindMup for Google Hangouts'
  @description='High-bandwidth collaborative brainstorming and idea review'
  erb :hangouts
end
get '/hangouts_get_started' do
  @title='Get started with MindMup for Google Hangouts'
  @description='FAQ and user instructions for MindMup Hangouts'
  erb :'hangouts-get-started'
end
get '/classroom' do
  @title='Mind Mapping in schools and classrooms'
  @description='Mind mapping in schools and classrooms, educational techology'
  erb :classroom
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

  latest = 4
  if (params[:my_doc_version].to_f < latest) then
    @title="MindMup IOS Guide version #{latest}"
    @version=latest
    if params[:my_app_version].to_f >= 3.1 then
      erb :guide_ios, :layout=> false
    else
      erb :guide_ios_up_to_v3, :layout=> false
    end
  else
    halt 304, "OK"
  end
end

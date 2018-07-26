require './environment'


module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    
    get '/new' do
      erb :"pirates/new"
    end
    
    post '/pirates' do
<<<<<<< HEAD

      @pirate = Pirate.new(params[:pirate])
=======
      @pirate = Pirate.new(params[:student])
>>>>>>> 8fef0cab0d72da236ab8851a6f24befccc580f40
      
      params[:pirate][:ships].each do |args|
        Ship.new(args)
      end
      
      @ships = Ship.all

      erb :"pirates/show"
    end
    
  end
end

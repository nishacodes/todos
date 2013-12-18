require 'bundler'
Bundler.require

module Birthday
  class App < Sinatra::Application
  
    get '/' do
      @date = Date.today.strftime("%m/%d")
      @birthday = "10/27"
      @date == @birthday ? @birthday_today = "YESSS" :  @birthday_today = "NO"
      erb :index
    end

    helpers do 
      def simple_partial(template)
        erb template
      end
    end

  end
end


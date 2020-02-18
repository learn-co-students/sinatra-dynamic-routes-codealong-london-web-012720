require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
  #typet in the terminal this with a random name
#http://localhost:9393/goodbye/Mustafa
  get '/goodbye/:name' do
    @user_name = params[:name] 
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do 
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @result = @num1 * @num2
    "result #{@result}"

  end

  #Goodbye  Mustafa(this is the output I got )

  # Code your final two routes here:

end



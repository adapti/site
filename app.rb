require 'pony'
require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    @title = 'UHULL Hello World'

    erb :index
  end

  post '/contato' do
    # retire daqui 3 variáveis (nome, email e mensagem)
    # que virão do form, envie isso para a adapti
    # e então envie um sinal de sucesso
    # (a mensagem irá funcionar por AJAX)
    
    # Para ajudar a enviar o email, cheque a gem
    # https://github.com/benprew/pony
    # http://adam.heroku.com/past/2008/11/2/pony_the_express_way_to_send_email_from_ruby/

    nome = params[:nome] 
    email = params [:email] 
    mensagem = params [:mensagem]

    if !email.blank? and !nome.blank? and !mensagem.blank?
      Pony.mail(:to => 'willianvdantas@gmail.com', :from => email , :subject => "Formulario enviado por " + nome, :body => mensagem)
      flash[:msg] = 'O email foi enviado com sucesso'
    else  
      flash[:msg] = 'Nao foi enviado o email'  
    end  
  end
end

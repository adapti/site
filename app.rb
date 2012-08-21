require 'sinatra'

get '/' do
  'Hello world'
end

post '/contato' do
  # retire daqui 3 variáveis (nome, email e mensagem)
  # que virão do form, envie isso para a adapti
  # e então envie um sinal de sucesso
  # (a mensagem irá funcionar por AJAX)
  
  # Para ajudar a enviar o email, cheque a gem
  # https://github.com/benprew/pony
  # http://adam.heroku.com/past/2008/11/2/pony_the_express_way_to_send_email_from_ruby/
end

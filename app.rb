require 'sinatra'

get '/confirm' do
  # パラメータの取得
  name = params['name']
  email = params['email']

  # パラメータを表示するだけのページを返す
  <<~HTML
  <!DOCTYPE html>
  <html>
  <head>
    <title>Confirmation Page</title>
  </head>
  <body>
    <h1>Confirmation Page</h1>
    <p>Name: #{name}</p>
    <p>Email: #{email}</p>
  </body>
  </html>
  HTML
end

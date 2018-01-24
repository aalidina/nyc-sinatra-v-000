class FiguresController < ApplicationController
  get '/' do

  end

  get '/figures/new' do
    erb :'/figures/new'
  end
end

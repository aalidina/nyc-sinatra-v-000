require 'pry'
class FiguresController < ApplicationController
  get '/figures' do
    erb :'/figures/index'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures' do

    @figures = Figure.create(params["figure"])

    if !params["title"]["name"].empty?
      @figures.titles << Title.create(params["title"])
    end

    if !params["landmark"]["name"].empty?
      @figures.landmarks << Landmark.create(params["landmark"])
    end

    @figures.save

    redirect to "/figures/#{@figures.id}"
  end

  get '/figures/:id' do
    @figures = Figure.find(params[:id])
    erb :'figures/show'
  end

  get '/figures/:id/edit' do
    @figures = Figure.find(params[:id])
    erb :'figures/edit'
  end



end

#rspec ./spec/controllers/figures_controller_spec.rb --fail-fast

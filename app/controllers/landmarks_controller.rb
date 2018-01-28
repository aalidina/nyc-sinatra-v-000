require 'pry'
class LandmarksController < ApplicationController

  get '/landmarks' do
    erb :'/landmarks'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    @landmarks = Landmark.create(params[:landmark])

    if !params["landmark"]["name"].empty?
      @figures.landmarks << Landmark.create(name: params["name"])
    end
    binding.pry
  end
end


# rspec ./spec/controllers/models/figures_controller_spec.rb --fail-fast

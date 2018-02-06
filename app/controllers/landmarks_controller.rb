require 'pry'
class LandmarksController < ApplicationController

  get '/landmarks' do
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params["landmark"])
    if !params["figure"]["name"].empty?
      @landmark.figure = Figure.create(params["figure"])
    end

     redirect "/landmarks/#{@landmark.id}"
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/edit'
  end

  post '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])

    @landmark.name = params["landmark"]["name"]
    @landmark.year_completed = params["landmark"]["year_completed"]
    @landmark.save

    redirect "/landmarks/#{@landmark.id}"
  end
end


# rspec ./spec/controllers/landmarks_controller_spec.rb --fail-fast

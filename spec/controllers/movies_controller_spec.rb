require 'spec_helper'

describe MoviesController do

before do
    @movie = Tmdb::Movie.detail(268321)
  end

  it "should return an id" do
    @movie.id.should eq(268321)
  end

  it "should id be int" do
    @movie.id.is_a? Integer
  end

  it "should return a imdb id" do
    @movie.imdb_id.should eq("tt1300854")
  end

  it "should imdb id be string" do
    @movie.imdb_id.is_a? String
  end  
    
end

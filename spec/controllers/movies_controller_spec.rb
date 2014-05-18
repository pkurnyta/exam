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
    @movie.imdb_id.should eq("tt2359307")
  end

  it "should imdb id be string" do
    @movie.imdb_id.is_a? String
  end  
    
it "should return an original title" do
    @movie.original_title.should eq("Squatters")
  end

  it "should original title be string" do
    @movie.original_title.is_a? String
  end

  it "should return if for adults" do
    @movie.adult.should eq(false)
  end

  it "should return a backdrop path" do
    @movie.backdrop_path.should eq("/n9X2DKItL3V0yq1q1jrk8z5UAki.jpg")
  end

  it "should backdrop path be string" do
    @movie.backdrop_path.is_a? String
  end

end

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
    @movie.backdrop_path.should eq("/iqceRmCpCD2dbkOM8Rw6HzDwGGc.jpg")
  end

  it "should backdrop path be string" do
    @movie.backdrop_path.is_a? String
  end

it "should return if belongs to collection" do
    @movie.belongs_to_collection.blank?
  end

  it "should return a budget" do
    @movie.budget.should eq(0)
  end

  it "should budget be int" do
    @movie.budget.is_a? Integer
  end

  it "should return a homepage" do
    @movie.homepage.should eq("http://www.sonypictures.com/movies/squatters/")
  end

  it "should homepage be string" do
    @movie.homepage.is_a? String
  end

 it "popularity should be int" do
    @movie.popularity.is_a? Integer
  end

  it "should return a poster path" do
    @movie.poster_path.should eq("/jFZ1PJAt0Mr2DbvQ1sksPuhCtt7.jpg")
  end

  it "should poster path be string" do
    @movie.poster_path.is_a? String
  end

  it "should return a release date" do
    @movie.release_date.should eq("2014-05-14")
  end

  it "should return a title" do
    @movie.title.should eq("Squatters")
  end

 it "should title be string" do
    @movie.title.is_a? String
  end

  it "should return a revenue" do
    @movie.revenue.should eq(0)
  end

  it "should revenue be int" do
    @movie.revenue.is_a? Integer
  end

  it "should return a tagline" do
    @movie.tagline.should eq("Having Nothing Means Having Nothing to Lose")
  end

  it "should tagline be string" do
    @movie.tagline.is_a? String
  end

it "should return a runtime" do
    @movie.runtime.should eq(106)
  end

  it "should runtime be int" do
    @movie.runtime.is_a? Integer
  end

  it "should return a vote_count" do
    @movie.vote_count.should eq(1)
  end

  it "should vote_count be int" do
    @movie.vote_count.is_a? Integer
  end

  it "should return a vote_average" do
    @movie.vote_average.should eq(7.5)
  end

 it "should vote_average be int" do
    @movie.vote_average.is_a? Integer
  end

  it "should return a status" do
    @movie.status.should eq("Released")
  end

  it "should status be string" do
    @movie.status.is_a? String
  end

end

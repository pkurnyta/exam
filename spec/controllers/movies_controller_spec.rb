require 'spec_helper'

describe MoviesController do

  before do
    @movie = Tmdb::Movie.detail(68721)
  end

  it "should return an id" do
    @movie.id.should eq(68721)
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

  it "should return an original title" do
    @movie.original_title.should eq("Iron Man 3")
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

  it "should return if belongs to collection" do
    @movie.belongs_to_collection.blank?
  end

  it "should return a budget" do
    @movie.budget.should eq(200000000)
  end

  it "should budget be int" do
    @movie.budget.is_a? Integer
  end

  it "should return a homepage" do
    @movie.homepage.should eq("http://marvel.com/ironman3")
  end

  it "should homepage be string" do
    @movie.homepage.is_a? String
  end

  it "popularity should be int" do
    @movie.popularity.is_a? Integer
  end

  it "should return a poster path" do
    @movie.poster_path.should eq("/1Ilv6ryHUv6rt9zIsbSEJUmmbEi.jpg")
  end

  it "should poster path be string" do
    @movie.poster_path.is_a? String
  end

  it "should return a release date" do
    @movie.release_date.should eq("2013-05-03")
  end

  it "should return a title" do
    @movie.title.should eq("Iron Man 3")
  end

  it "should title be string" do
    @movie.title.is_a? String
  end

  it "should return a revenue" do
    @movie.revenue.should eq(1198459803)
  end

  it "should revenue be int" do
    @movie.revenue.is_a? Integer
  end

  it "should return a tagline" do
    @movie.tagline.should eq("Unleash the power behind the armor.")
  end

  it "should tagline be string" do
    @movie.tagline.is_a? String
  end

  it "should return a runtime" do
    @movie.runtime.should eq(130)
  end

  it "should runtime be int" do
    @movie.runtime.is_a? Integer
  end

  it "should return a vote_count" do
    @movie.vote_count.should eq(4463)
  end

  it "should vote_count be int" do
    @movie.vote_count.is_a? Integer
  end

  it "should return a vote_average" do
    @movie.vote_average.should eq(6.8)
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
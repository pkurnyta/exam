require 'spec_helper'

describe MoviesController do

before do
    @movie = Tmdb::Movie.detail(268321)
  end

  it "should return an id" do
    @movie.id.should eq(268321)
  end
  
    
end

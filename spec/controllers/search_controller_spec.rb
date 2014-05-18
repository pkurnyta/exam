require 'spec_helper'

describe SearchController do

before(:each) do
    @movie = Tmdb::Movie.find('Captain America')
  end
    
  it "should return movies" do
    response.should be_success
  end 

end

require 'spec_helper'

describe SearchController do

  before(:each) do
    @movie = Tmdb::Movie.find('batman')
  end
    
  it "should return movies" do
    response.should be_success
  end

end

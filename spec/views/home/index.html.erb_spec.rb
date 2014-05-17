require 'spec_helper'
describe "home/index.html.erb" do
 
  before(:each) do
    @configuration = Tmdb::Configuration.new
    @now_playing = Tmdb::Movie.now_playing
  end

  it "displays search" do
    render
    expect(rendered).to include("Now Playing")
  end

  it "displays search text?" do
    render
    expect(rendered).to include("Search for a movie")
  end

  it "displays search input correctly?" do
    render
    expect(rendered).to include("input-xlarge searchInput")
  end

  it "displays images correctly?" do
    render
    expect(rendered).to include("http://image.tmdb.org/")
  end

end
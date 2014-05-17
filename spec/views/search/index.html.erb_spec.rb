require 'spec_helper'
describe "search/index.html.erb" do
 
  before(:each) do
    @configuration = Tmdb::Configuration.new
    @movie = Tmdb::Movie.find('batman')
  end

  it "displays title?" do
    render
    expect(rendered).to include("Search results")
  end

  it "displays batman indeed?" do
    render
    expect(rendered).to include("Batman")
  end

  it "displays year of production correctly?" do
    render
    expect(rendered).to include("(1989)")
  end

  it "displays image correctly?" do
    render
    expect(rendered).to include("http://image.tmdb.org/t/p/w154/u782c0lom0YlLwSWX0X2o72OJDT.jpg")
  end

  it "displays writers correctly?" do
    render
    expect(rendered).to include("Michael Keaton")
  end

  it "displays search directors correctly?" do
    render
    expect(rendered).to include("Tim Burton")
  end

end
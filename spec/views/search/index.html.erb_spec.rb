require 'spec_helper'
describe "search/index.html.erb" do
 
  before(:each) do
    @configuration = Tmdb::Configuration.new
    @movie = Tmdb::Movie.find('Apocalypto')
  end

  it "displays title?" do
    render
    expect(rendered).to include("Search results")
  end

  it "displays batman indeed?" do
    render
    expect(rendered).to include("Apocalypto")
  end

  it "displays year of production correctly?" do
    render
    expect(rendered).to include("(2006)")
  end

  it "displays image correctly?" do
    render
    expect(rendered).to include("http://image.tmdb.org/t/p/w154/5BTFXR96hcBzmJvd9FwNayV79Xu.jpg")
  end

  it "displays writers correctly?" do
    render
    expect(rendered).to include("Rudy Youngblood")
  end

  it "displays search directors correctly?" do
    render
    expect(rendered).to include("Mel Gibson")
  end


end

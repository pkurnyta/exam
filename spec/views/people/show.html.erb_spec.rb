require 'spec_helper'
describe "people/show.html.erb" do

 before(:each) do
    @configuration = Tmdb::Configuration.new
 	@people = Tmdb::Person.detail(1014932)
  	@movies = Tmdb::Person.credits(1014932)
  end

  it "displays name correctly?" do
    render
    expect(rendered).to include("Gabriella Wilde")
  end

  it "displays image correctly?" do
    render
    expect(rendered).to include("http://image.tmdb.org/t/p/w154/xbhScoMy3P6pK8Eg5V3EbGoxRSg.jpg")
  end
 
end

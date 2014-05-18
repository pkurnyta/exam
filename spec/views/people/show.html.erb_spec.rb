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

it "displays born title?" do
    render
    expect(rendered).to include("Born")
  end

  it "displays born correctly?" do
    render
    expect(rendered).to include("Basingstoke - Hampshire - England")
  end

  it "displays birthday title?" do
    render
    expect(rendered).to include("Birthday")
  end

  it "displays birthday correctly?" do
    render
    expect(rendered).to include("1989-04-08")
  end

  it "displays biography title?" do
    render
    expect(rendered).to include("Biography")
  end

it "displays correct biography?" do
    render
    expect(rendered).to include("From Wikipedia, the free encyclopedia\n\nGabriella Zanna Vanessa Anstruther-Gough-Calthorpe,")
  end

  it "displays homepage title?" do
    render
    expect(rendered).to include("Homepage")
  end

  it "displays known for title?" do
    render
    expect(rendered).to include("Known For")
  end

  it "displays known for correctly?" do
    render
    expect(rendered).to include("qJQzjhBeBkQmPgsNbD5qXtC6wMq")
    expect(rendered).to include("http://image.tmdb.org/t/p/w92/qJQzjhBeBkQmPgsNbD5qXtC6wMq.jpg")
    expect(rendered).to include("/movies/37565")
  end
 
end

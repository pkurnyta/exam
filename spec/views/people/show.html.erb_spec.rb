require 'spec_helper'
describe "people/show.html.erb" do
 
  before(:each) do
    @configuration = Tmdb::Configuration.new
 	@people = Tmdb::Person.detail(1)
  	@movies = Tmdb::Person.credits(1)
  end

  it "displays name correctly?" do
    render
    expect(rendered).to include("George Lucas")
  end

  it "displays image correctly?" do
    render
    expect(rendered).to include("http://image.tmdb.org/t/p/w154/rJ1zvSeZfge0mHtLnzJn4Mkw18S.jpg")
  end

  it "displays born title?" do
    render
    expect(rendered).to include("Born:")
  end

  it "displays born correctly?" do
    render
    expect(rendered).to include("Modesto - California - USA")
  end

  it "displays birthday title?" do
    render
    expect(rendered).to include("Birthday:")
  end

  it "displays birthday correctly?" do
    render
    expect(rendered).to include("1944-05-14")
  end

  it "displays biography title?" do
    render
    expect(rendered).to include("Biography")
  end

  it "displays correct biography?" do
    render
    expect(rendered).to include("Arguably the most important film innovator in the history of the medium,")
  end

  it "displays homepage title?" do
    render
    expect(rendered).to include("Homepage")
  end

  it "displays known for title?" do
    render
    expect(rendered).to include("Known for")
  end

  it "displays known for correctly?" do
    render
    expect(rendered).to include("Tw9gahqqcbfx0x0xfvbwqusmzou")
    expect(rendered).to include("http://image.tmdb.org/t/p/w92/tw9gAhqQcBFX0X0XfVbWqUsmzoU.jpg")
    expect(rendered).to include("/movies/13611")
  end
end
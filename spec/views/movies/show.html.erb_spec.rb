require 'spec_helper'
describe "movies/show.html.erb" do

  before(:each) do
    @configuration = Tmdb::Configuration.new
    @movie = Tmdb::Movie.detail(268321)
    @images = Tmdb::Movie.images(268321)
    @cast = Tmdb::Movie.casts(268321)
    @trailers = Tmdb::Movie.trailers(268321)
    @similar_movies = Tmdb::Movie.similar_movies(268321)
  end

  it "displays title correctly?" do
    render
    expect(rendered).to include("Squatters")
  end

  it "displays poster correctly?" do
    render
    expect(rendered).to include("http://image.tmdb.org/t/p/w154/tIdDHXa0FKdveIMFUF9GM28mqAp.jpg")
  end

  it "displays budget title?" do
    render
    expect(rendered).to include("Budget:")
  end

  it "displays budget correctly?" do
    render
    expect(rendered).to include("$0")
  end

  it "displays revenue title?" do
    render
    expect(rendered).to include("Revenue:")
  end

end

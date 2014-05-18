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

  it "displays revenue correctly?" do
    render
    expect(rendered).to include("$0")
  end

  it "displays released status title?" do
    render
    expect(rendered).to include("Status:")
  end

  it "displays released status correctly?" do
    render
    expect(rendered).to include("Released")
  end

  it "displays runtime title?" do
    render
    expect(rendered).to include("Runtime:")
  end

  it "displays runtime correctly?" do
    render
    expect(rendered).to include("106")
  end

 it "displays release date title?" do
    render
    expect(rendered).to include("Release Date:")
  end

  it "displays release date correctly?" do
    render
    expect(rendered).to include("14/05/2014")
  end

  it "displays trailer title correctly?" do
    render
    expect(rendered).to include("Trailer - HD")
  end

  it "displays rating title?" do
    render
    expect(rendered).to include("Rating")
  end

  it "displays rating correctly?" do
    render
    expect(rendered).to include("7.5 from 1 voters.")
  end


end

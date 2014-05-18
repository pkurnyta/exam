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

 it "displays trailer link correctly?" do
    render
    expect(rendered).to include("http://www.youtube.com/watch?v=-oWT9RwxhRM")
  end

  it "displays overview?" do
    render
    expect(rendered).to include("Overview")
  end

  it "displays correct overview?" do
    render
    expect(rendered).to include("Imagine you had a chance to live someone else's life... For two young drifters, Jonas and Kelly, their dream comes true when they illegally take residence in an upscale home of a vacationing family. But things start to spiral out of control when the rightful owners, Michael Silverman and his father David, unexpectedly return from overseas. Now Jonas and Kelly are trapped by their own deceptions, leading to a violent, inevitable confrontation between two very different worlds.")
  end

  it "displays tagline title?" do
    render
    expect(rendered).to include("Tagline")
  end

  it "displays tagline correctly?" do
    render
    expect(rendered).to include("Having Nothing Means Having Nothing to Lose")
  end

end

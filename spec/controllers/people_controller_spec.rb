require 'spec_helper'

describe PeopleController do

  before do
    @person = Tmdb::Person.detail(287)
  end

  it "should return an id" do
    @person.id.should eq(287)
  end

  it "should an id be int" do
    @person.id.is_a? Integer
  end

  it "should return a false" do
    @person.adult.should eq(false)
  end

  it "should be a array" do
    @person.also_known_as.kind_of?(Array)
  end

  it "should return a name" do
    @person.name.should eq("Brad Pitt")
  end

  it "should a name be string" do
    @person.name.is_a? String
  end

  it "should return a place_of_birth" do
    @person.place_of_birth.should eq("Shawnee - Oklahoma - USA")
  end

  it "should a place_of_birth be string" do
    @person.place_of_birth.is_a? String
  end

  it "should return a biography " do
    @person.biography.should eq(@person.biography)
  end

  it "should return a birthday" do
    @person.birthday.should eq("1963-12-18")
  end

  it "should a birthday be string" do
    @person.birthday.is_a? String
  end

  it "should return a deathday" do
    @person.deathday.should eq("")
  end

  it "should a deathday be string" do
    @person.deathday.is_a? String
  end

  it "should return a homepage" do
    @person.homepage.should eq("")
  end

  it "should a homepage be string" do
    @person.homepage.is_a? String
  end

  it "should return a profile_path" do
    @person.profile_path.should eq("/kc3M04QQAuZ9woUvH3Ju5T7ZqG5.jpg")
  end

  it "should a profile_path be string" do
    @person.profile_path.is_a? String
  end

end

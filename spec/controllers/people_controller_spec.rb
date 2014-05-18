require 'spec_helper'

describe PeopleController do

before do
    @person = Tmdb::Person.detail(137424)
  end

  it "should return an id" do
    @person.id.should eq(137424)
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
    @person.name.should eq("Gia Mantegna")
  end  

end

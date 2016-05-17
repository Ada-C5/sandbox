require 'test_helper'

describe Pokemon do
  it "uses v2 of the API" do
    assert_equal "http://pokeapi.co/api/v2/", Pokemon::BASE_URL
  end

  describe "API" do
    before do
      @bulbasaur = Pokemon.find(1)
    end

    it "knows its name", :vcr do
      assert_equal "bulbasaur", @bulbasaur.name    
    end

    it "doesn't have nils in its sprites", :vcr do
      refute @bulbasaur.sprite_urls.any? { |s| s.nil? }
    end

    it "knows that it has moves", :vcr do
      assert_instance_of Array, @bulbasaur.moves
    end
  end
end

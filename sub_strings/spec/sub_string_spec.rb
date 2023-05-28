# frozen_string_literal: true

require 'spec_helper'
require './lesson/sub_string.rb'

RSpec.describe 'Sub-strings' do
  dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

  it 'should find below and low' do
    expect(substrings("below", dictionary)).to eql({ "below" => 1, "low" => 1 })
  end

  it 'should find in long string' do
    expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eql({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
  end

end

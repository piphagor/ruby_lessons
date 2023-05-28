# frozen_string_literal: true

require 'spec_helper'
require './lesson/bubble_sort.rb'

RSpec.describe 'Bubble Sort' do

  it 'sort' do
    expect(bubble_sort([17, 3, 6, 9, 15, 1])).to eql([1, 3, 6, 9, 15, 17])
  end

  it 'sort 2' do
    expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eql([0, 2, 2, 3, 4, 78])
  end

end

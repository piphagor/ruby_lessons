# frozen_string_literal: true

require 'spec_helper'
require './lesson/stock_picker.rb'

RSpec.describe 'Stock Picker' do

  it 'prices in the middle' do
    expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10, 7])).to eql([1, 4])
  end

  it 'lowest price first' do
    expect(stock_picker([1, 3, 6, 9, 15, 18, 26, 33, 34, 45])).to eql([0, 9])
  end

  it 'lowest price last' do
    expect(stock_picker([8, 13, 6, 9, 15, 18, 26, 33, 34, 4])).to eql([2, 8])
  end

end

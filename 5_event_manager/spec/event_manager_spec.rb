# frozen_string_literal: true

require 'spec_helper'
require './lib/event_manager.rb'

RSpec.describe 'Clean Phone Numbers' do

  bad_number = '0000000000'

  it 'phone number has less then 10 digits' do
    expect(clean_phone_number(123_456_789)).to eql(bad_number)
  end

  it 'phone number has 10 digits' do
    expect(clean_phone_number(9_123_456_789)).to eql('9123456789')
  end

  it 'phone number has 11 digits with first 1' do
    expect(clean_phone_number(12_123_456_789)).to eql('2123456789')
  end

  it 'phone number has 11 digits with first not 1' do
    expect(clean_phone_number(22_123_456_789)).to eql(bad_number)
  end

  it 'phone number has more then 11 digits' do
    expect(clean_phone_number(222_123_456_789)).to eql(bad_number)
  end

end

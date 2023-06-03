# frozen_string_literal: true

require_relative '../lib/recursion'

RSpec.describe Enumerable do
  describe 'Fibonacci sequence using iteration' do
    it 'of size 0' do
      expect(fibs 0).to eq []
    end

    it 'of size 1' do
      expect(fibs 1).to eq [0]
    end

    it 'of size 2' do
      expect(fibs 2).to eq [0, 1]
    end

    it 'of size 8' do
      expect(fibs 8).to eq [0, 1, 1, 2, 3, 5, 8, 13]
    end
  end

  describe 'Fibonacci sequence using recursion' do
    it 'of size 0' do
      expect(fibs_rec 0).to eq []
    end

    it 'of size 1' do
      expect(fibs_rec 1).to eq [0]
    end

    it 'of size 2' do
      expect(fibs_rec 2).to eq [0, 1]
    end

    it 'of size 8' do
      expect(fibs_rec 8).to eq [0, 1, 1, 2, 3, 5, 8, 13]
    end
  end
end

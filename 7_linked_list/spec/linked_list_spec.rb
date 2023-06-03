# frozen_string_literal: true

require_relative '../lib/linked_list'

RSpec.describe Enumerable do
  describe 'Linked List' do
    it '#append adds item to the end of the list when list is empty' do
      list = MyLinkedList.new
      expect(list.append(7).to_s).to eq "(7) -> nil"
    end

    it '#append adds item to the end of the list' do
      list = MyLinkedList.new
      list.append(5)
      list.append(7)
      expect(list.to_s).to eq "(5) -> (7) -> nil"
    end

    it '#prepend adds item to the start of the list when list is empty' do
      list = MyLinkedList.new
      expect(list.prepend(7).to_s).to eq "(7) -> nil"
    end

    it '#prepend adds item to the start of the list' do
      list = MyLinkedList.new
      list.append(5)
      list.prepend(7)
      expect(list.to_s).to eq "(7) -> (5) -> nil"
    end

    it 'size when the list is empty' do
      list = MyLinkedList.new
      expect(list.size).to eq 0
    end

    it 'size of the non-empty list' do
      list = MyLinkedList.new
      list.append(5)
      list.prepend(7)
      expect(list.size).to eq 2
    end

    it 'WHEN list is empty THEN head is nil' do
      list = MyLinkedList.new
      expect(list.head).to eq nil
    end

    it 'WHEN item is appended THEN head equals to this item' do
      list = MyLinkedList.new
      list.append("zxc")
      list.append("777")
      list.append("abc")
      expect(list.head.value).to eq "zxc"
    end

    it 'when list is empty then tail is nil' do
      list = MyLinkedList.new
      expect(list.tail).to eq nil
    end

    it 'tail points to the last item' do
      list = MyLinkedList.new
      list.append("zxc")
      list.append("777")
      list.append("abc")
      expect(list.tail.value).to eq "abc"
    end
  end
end

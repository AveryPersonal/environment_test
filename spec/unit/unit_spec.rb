# location: spec/unit/unit_spec.rb
require_relative '../rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'JK Rowling',price:'30.5',published_date:'01/01/2021')

  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  #it 'is not valid without a published date' do
    #subject.published_date = nil
    #expect(subject).not_to be_valid
  #end
end

require_relative '../classes/label'
require_relative '../classes/book'

describe Label do
  before :each do
    @label = Label.new('Gift', 'Brown')
  end

  context 'When a new label object is created' do
    it 'should have the correct details' do
      expect(@label.title).to eq('Gift')
      expect(@label.color).to eq('Brown')
      expect(@label.items).to eq([])
    end
  end

  context 'when items are added to a label' do
    it 'should have the correct items' do
      book = Book.new('2000-01-01', 'Macmilan', 'bad')
      another_book = Book.new('2007-08-08', 'Longhorn', 'good')

      @label.add_item(book)
      @label.add_item(another_book)

      expect(@label.items.length).to be(2)
      expect(book.label.title).to eq('Gift')
      expect(another_book.label.title).to eq('Gift')
    end
  end
end

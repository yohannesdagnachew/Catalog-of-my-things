require_relative '../classes/book'
require_relative '../classes/label'

describe Book do
  before :each do
    @book = Book.new('2000-01-02', 'Macmilan', 'bad')
  end

  context 'When book is created' do
    it 'should have the correct details' do
      expect(@book.publisher).to eq('Macmilan')
      expect(@book.cover_state).to eq('bad')
      expect(@book.label).to be nil
      expect(@book.move_to_archive).to be true
    end
  end

  context 'Add a label to a book' do
    it 'should have the correct label details' do
      label = Label.new('Gift', 'Blue')
      label.add_item(@book)
      expect(@book.label.title).to eq('Gift')
      expect(@book.label.color).to eq('Blue')
    end
  end

  context 'When a newly published book is created' do
    it 'should not be archived' do
      book = Book.new('2020-08-08', 'Longhorn', 'good')
      expect(book.move_to_archive).to be nil
    end
  end

  context 'When an old book is created' do
    it 'Archiving it is possible' do
      book = Book.new('2000-08-08', 'Longhorn', 'good')
      expect(book.move_to_archive).to be true
    end
  end
end

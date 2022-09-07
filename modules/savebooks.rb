require 'json'

module ModelBooks
  def save_books
    books = []
    @books.each do |book|
      item = {
        publish_date: book.publish_date,
        publisher: book.publisher,
        cover_state: book.cover_state
      }
      item['label_id'] = book.label.id unless book.label.nil?
      books << item
    end
    File.write('./data/books.json', JSON.generate(books))
  end

  def load_books
    records = []
    return records unless File.exist?('./data/books.json')

    books = JSON.parse(File.read('./data/books.json'))
    books.each do |book|
      item = Book.new(book['publish_date'], book['publisher'], book['cover_state'])
      lbl = @labels.find { |label| label.id == book['label_id'].to_i } unless book['label_id'].nil?
      lbl&.add_item(item)
      records << item
    end
    records
  end
end

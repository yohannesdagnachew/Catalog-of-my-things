module BookOptions
  def list_books
    puts "\nAll Books:"
    @books.each_with_index do |book, index|
      puts "#{index}) Publisher: #{book.publisher} Date: #{book.publish_date} Cover: #{book.cover_state}"
    end
    puts
  end

  def create_book
    print 'Please enter publishing date: '
    publish_date = gets.chomp
    print 'Please enter the publisher: '
    publisher = gets.chomp
    print 'Please enter the state of the book cover: '
    cover_state = gets.chomp
    @books << Book.new(publish_date, publisher, cover_state)
    puts 'Book added successfully'
  end
end

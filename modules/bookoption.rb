module BookOptions
  def list_books
    puts "\nAll Books:"
    @books.each_with_index do |book, index|
      print "#{index}) Publisher: #{book.publisher} Date: #{book.publish_date}"
      print " Label: #{book.label.title}" unless book.label.nil?
      puts
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
    book = Book.new(publish_date, publisher, cover_state)
    label = attach_label
    label&.add_item(book)
    @books << book
    puts "Book added successfully\n"
  end

  def attach_label
    label = nil
    print 'Do you wish to add a label to book [y/n]: '
    choice = gets.chomp
    return unless choice.upcase == 'Y'

    print " \n 1: Attach Existing Label \n 2: Create New Label \n Enter: "
    input = gets.chomp.to_i
    case input
    when 1
      label = attach_from_list
    when 2
      label = create_label
    end
    label
  end

  def attach_from_list
    if @labels.length.positive?
      list_labels
      print 'Enter label id from list: '
      id = gets.chomp.to_i
      @labels.find { |label| label.id == id }
    else
      create_label
    end
  end
end

module LabelOptions
  def list_labels
    puts "\nAll Labels:"
    @labels.each_with_index do |label, index|
      puts "#{index}) Id: #{label.id} Title: #{label.title} Color: #{label.color}"
    end
    puts
  end

  def create_label
    print 'Please enter label title: '
    title = gets.chomp
    print 'Please enter the label color: '
    color = gets.chomp
    label = Label.new(title, color)
    @labels << label
    label
  end
end

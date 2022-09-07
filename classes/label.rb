class Label
  attr_reader :items
  attr_accessor :id, :title, :color

  def initialize(title, color)
    @id = Random.rand(0..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.add_label = self
  end
end

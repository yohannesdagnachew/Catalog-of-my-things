require 'json'

module ModelLabels
  def save_labels
    labels = []
    @labels.each do |label|
      item = {
        id: label.id,
        title: label.title,
        color: label.color
      }
      labels << item
    end
    File.write('./data/labels.json', JSON.generate(labels))
  end

  def load_labels
    records = []
    return records unless File.exist?('./data/labels.json')

    labels = JSON.parse(File.read('./data/labels.json'))
    labels.each do |label|
      item = Label.new(label['title'], label['color'])
      item.id = label['id']
      records << item
    end
    records
  end
end

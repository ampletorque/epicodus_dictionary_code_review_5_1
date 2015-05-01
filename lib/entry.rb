class Entry

  @@entries = []

  attr_reader(:word, :id, :definitions)

  define_method(:initialize) do |word|
    @word = word
    @id = @@entries.length()
    @definitions = []
  end

  define_singleton_method(:clear) do
    @@entries = []
  end

  define_method(:save) do
    @@entries.push(self)
  end

  define_singleton_method(:all) do
    @@entries
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

end

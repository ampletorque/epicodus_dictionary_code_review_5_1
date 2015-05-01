class Definition

  @@definitions = []

  attr_reader(:text, :id)

  define_method(:initialize) do |text|
    @text = text
    @id = @@definitions.length()
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

end

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
    
end

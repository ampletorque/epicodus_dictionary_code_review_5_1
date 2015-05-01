require('rspec')
require('definition')

describe(Definition) do
  before() do
    Definition.clear()
  end

  describe('#definition') do
    it("returns the text from a definition") do
      test_definition = Definition.new("The Transmogrifier is an invention of Calvin's that would turn one thing into another. Like most of his inventions, it was made originally from a cardboard box, though a later model was made using a water gun. Calvin used the transmogrifiers many times, turning himself and Hobbes into quite a wide array of creatures.")
      expect(test_definition.text()).to(eq("The Transmogrifier is an invention of Calvin's that would turn one thing into another. Like most of his inventions, it was made originally from a cardboard box, though a later model was made using a water gun. Calvin used the transmogrifiers many times, turning himself and Hobbes into quite a wide array of creatures."))
    end
  end

  describe('#id') do
    it("returns the id of the definition") do
      test_definition = Definition.new("The Transmogrifier is an invention of Calvin's that would turn one thing into another. Like most of his inventions, it was made originally from a cardboard box, though a later model was made using a water gun. Calvin used the transmogrifiers many times, turning himself and Hobbes into quite a wide array of creatures.")
      expect(test_definition.id()).to(eq(0))
    end
  end

  describe('#save') do
    it("saves a definition to the array of definitions") do
      test_definition = Definition.new("The Transmogrifier is an invention of Calvin's that would turn one thing into another. Like most of his inventions, it was made originally from a cardboard box, though a later model was made using a water gun. Calvin used the transmogrifiers many times, turning himself and Hobbes into quite a wide array of creatures.")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

end

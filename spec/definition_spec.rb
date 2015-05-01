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

  # describe('#picture') do
  #   it("returns the picture for the definition") do
  #     expect(test_definition.picture()).to(eq(pic))
  #   end
  # end

end

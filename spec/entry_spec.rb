# require('rspec')
# require('entry')
# require('definition')
#
# describe(Entry) do
#   before() do
#     Entry.clear()
#   end
#
#   describe('#word') do
#     it("returns the word from an entry") do
#       tes_entry = Entry.new("Transmogrifier")
#       expect(test_entry.word()).to(eq("Transmogrifier"))
#     end
#   end
#
#   describe('#id') do
#     it("returns the id of the word") do
#       test_entry = Definition.new("Transmogrifier")
#       expect(test_entry.id()).to(eq(0))
#     end
#   end
#
#   describe('#definitions') do
#     it("returns the definitions from an entry") do
#       test_entry = Entry.new("transmogrifier")
#       test_definition = Definition.new("The Transmogrifier is an invention of Calvin's that would turn one thing into another. Like most of his inventions, it was made originally from a cardboard box, though a later model was made using a water gun. Calvin used the transmogrifiers many times, turning himself and Hobbes into quite a wide array of creatures.")
#       test_entry = Entry.new("Calvinball")
#       test_definition_2 = Definition.new("Calvinball is a game invented by Calvin in which you make the rules up as you go along. Rules cannot be used twice (except for the rule that rules cannot be used twice). No Calvinball game is like another. The game may involve wickets, mallets, volleyballs, and additional equipment as well as masks. There is only one permanent rule in Calvinball: You can't play it in the same way twice.")
#       test_entry.add_definition(test_definition)
#       expect(test_entry.definitions()).to(eq([test_definition, test_definition_2]))
#     end
#   end
#
# end

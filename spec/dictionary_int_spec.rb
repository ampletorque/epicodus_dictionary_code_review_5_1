require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('dictionary Sinatra app') do

before() do
  Entry.clear()
end

describe('index get', {:type => :feature}) do
  it('Displays index page') do
    visit('/')
    expect(page).to have_content('Dictionary')
  end
end

describe('index post', {:type => :feature}) do
  it('Adds word to dictionary and displays it.') do
    visit('/')
    fill_in('word', :with => "Transmogrifier")
    fill_in('definition', with: "The Transmogrifier is an invention of Calvin's that would turn one thing into another. Like most of his inventions, it was made originally from a cardboard box, though a later model was made using a water gun. Calvin used the transmogrifiers many times, turning himself and Hobbes into quite a wide array of creatures.")
    click_button('Add Word')
    expect(page).to have_content('Transmogrifier')
  end
end

describe('word get', {:type => :feature}) do
  it('Displays word definition') do
    visit('/')
    fill_in('word', :with => "Transmogrifier")
    fill_in('definition', with: "The Transmogrifier is an invention of Calvin's that would turn one thing into another. Like most of his inventions, it was made originally from a cardboard box, though a later model was made using a water gun. Calvin used the transmogrifiers many times, turning himself and Hobbes into quite a wide array of creatures.")
    click_button('Add Word')
    click_link('a-word')
    expect(page).to have_content('Calvin')
  end
end

describe('word post', {:type => :feature}) do
  it('Adds definition to word') do
    visit('/')
    fill_in('word', :with => "Transmogrifier")
    fill_in('definition', with: "The Transmogrifier is an invention of Calvin's that would turn one thing into another. Like most of his inventions, it was made originally from a cardboard box, though a later model was made using a water gun. Calvin used the transmogrifiers many times, turning himself and Hobbes into quite a wide array of creatures.")
    click_button('Add Word')
    click_link('a-word')
    fill_in('definition', with: "A magical box.")
    click_button('Add Definition')
    expect(page).to have_content('magical')
  end
end

end

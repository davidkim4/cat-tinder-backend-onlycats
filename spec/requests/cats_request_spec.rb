require 'rails_helper'

RSpec.describe "Cats", type: :request do

  it "deletes a cat" do
    # The params we are going to send with the request
    cat_params = {
      cat: {
        name: 'Buster',
        age: 4,
        enjoys: 'Meow Mix, and plenty of sunshine.'
      }
    }

    # Send the request to the server
    post '/cats', params: cat_params

    cat = Cat.first
    delete "/cats/#{cat.id}"

    cats = Cat.all

    expect(response).to have_http_status(200)
    expect(cats).to be_empty
    puts cat.valid?
  end

  
end

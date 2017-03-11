require 'spec_helper'
require 'factories/todo_items'

describe 'HyperMesh Integration', js: true do
  it "The hyper-model gem pulls in hyper-mesh and it works" do
    mount "TestComp"
    expect(page).to have_content('No Todos')
    expect(page).to have_content('No Messages')
    FactoryGirl.create(:todo_item, title: 'my first todo')
    expect(page).to have_content('my first todo')
    SendToAll.run(message: "Hello!")
    expect(page).to have_content('Hello!')
    pause
  end
end

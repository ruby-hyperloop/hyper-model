require 'spec_helper'
require 'factories/todo_items'

describe 'HyperMesh Integration', js: true do
  it "The hyper-model gem pulls in hyper-mesh and it works" do
    mount "TestComp"
    pause
    expect(page).to have_content('No Todos')
    FactoryGirl.create(:todo_item, title: 'my first todo')
    pause
    expect(page).to have_content('my first todo')
    pause
  end
end

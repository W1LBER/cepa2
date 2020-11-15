require 'rails_helper'

RSpec.describe "Wines", type: :request do

  describe 'GET index' do
    it "assign @wines"
    get 'index'
  end

end

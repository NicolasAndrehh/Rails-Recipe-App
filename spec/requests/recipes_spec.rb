require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      allow_any_instance_of(ApplicationController).to receive(:authorize!).and_return(true)
      
      get '/recipes/index'
      expect(response).to have_http_status(:success)
    end
  end
end

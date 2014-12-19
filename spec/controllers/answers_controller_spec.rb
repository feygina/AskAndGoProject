require 'rails_helper'

RSpec.describe AnswersController, :type => :controller do

  describe 'GET #index' do
    let(:answers) { FactoryGirl.create_list(:answer, 2) }

    before { get :index }

    it 'populates an array of all questions' do
      expect(assigns(:questions)).to match_array(@questions)
    end

    it 'renders index view' do
      expect(response).to render_template :index
    end
  end
end

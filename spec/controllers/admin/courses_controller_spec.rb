require 'rails_helper'

module Admin

  RSpec.describe CoursesController, type: :controller do
    describe 'GET #index' do
      before do
        get :index
      end
    end
  end

end

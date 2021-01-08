require 'rails_helper'

module Ruby

  RSpec.describe LevelsController, type: :controller do
    describe 'GET #index' do

      let(:course) { create(:course)}
      let(:level) { create(:level, course: course)}
      # let(:level) { create(:level) }

      before do
        get :index, params: {id: level}
      end

      it 'test' do
        # get ruby_level_path(level.id)
        expect(response.status).to eq 200
      end
    end
  end

end

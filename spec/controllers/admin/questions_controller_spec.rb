require 'rails_helper'

module Admin

  RSpec.describe QuestionsController, type: :controller do

    describe 'GET #index' do

      # before do
      #   @course = create(:course)
      #   @level = create(:level)
      # end

      let(:course) { create(:course)}
      let(:level) { create(:level, course: course)}
      let(:question) { create(:question, level: level)}

      before do
        get :index, params: { course_id: course, level_id: level}
      end

      it "returns 200 response" do
        # get admin_course_level_questions_path(course, level)
        expect(response.status).to eq 200
        # expect(response).to render_template :index
      end
    end

    # describe 'GET #show' do
    #   # let(:course) { create(:course)}
    #   # let(:level) { create(:level, course: course)}
    #   before do
    #     get :show, params: { id: level}
    #   end
    #   it "returns 200 response" do
    #     expect(response.status).to eq 200
    #     expect(response).to render_template :show
    #   end
    # end

    describe 'GET #new' do
      before do
        get :new
      end
    end

    describe 'GET #index' do
      before do
        get :index
      end
    end

    describe 'GET #edit' do
      before do
        get :edit
      end
    end
  end

end

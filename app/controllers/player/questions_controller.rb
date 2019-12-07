module Player
  class QuestionsController < BaseController

    before_action :set_level, only: %i[index show update]
    before_action :set_question, only: %i[show]

    # GET /questions
    # GET /questions.json
    def index
      @questions = @level.questions
      # Kaminari10件ずつ表示
      @questions = @questions.page(params[:page]).per(10)
    end

    def selection
    end

    # GET /questions/1
    # GET /questions/1.json
    def show
    end

    # GET /questions/new
    def new
      @question = Question.new
    end

    # GET /questions/1/edit
    def edit
    end

    # POST /questions
    # POST /questions.json
    def create
      @question = Question.new(question_params)

      respond_to do |format|
        if @question.save
          format.html { redirect_to @question, notice: 'Question was successfully created.' }
          format.json { render :show, status: :created, location: @question }
        else
          format.html { render :new }
          format.json { render json: @question.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /questions/1
    # PATCH/PUT /questions/1.json
    def update
      respond_to do |format|
        if @question.update(question_params)
          format.html { redirect_to @question, notice: 'Question was successfully updated.' }
          format.json { render :show, status: :ok, location: @question }
        else
          format.html { render :edit }
          format.json { render json: @question.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /questions/1
    # DELETE /questions/1.json
    def destroy
      @question.destroy
      respond_to do |format|
        format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

      def set_levels
        @levels = Level.all
      end

      def set_level
        @level = Level.find_by(params[:name])
      end

      def set_question
        @question = Question.find(params[:id])
      end

  end
end
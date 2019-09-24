module Admin
  class QuestionSelectsController < BaseController
    before_action :set_question_select, only: [:show, :edit, :update, :destroy]

    # GET /admin/question_selects
    # GET /admin/question_selects.json
    def index
      @question_selects = QuestionSelect.all
    end

    # GET /admin/question_selects/1
    # GET /admin/question_selects/1.json
    def show
    end

    # GET /admin/question_selects/new
    def new
      @question_select = QuestionSelect.new
    end

    # GET /admin/question_selects/1/edit
    def edit
    end

    # POST /admin/question_selects
    # POST /admin/question_selects.json
    def create
      @question_select = QuestionSelect.new(question_select_params)

      respond_to do |format|
        if @question_select.save
          format.html { redirect_to @question_select, notice: 'QuestionSelect was successfully created.' }
          format.json { render :show, status: :created, location: @question_select }
        else
          format.html { render :new }
          format.json { render json: @question_select.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /admin/question_selects/1
    # PATCH/PUT /admin/question_selects/1.json
    def update
      respond_to do |format|
        if @question_select.update(question_select_params)
          format.html { redirect_to @question_select, notice: 'QuestionSelect was successfully updated.' }
          format.json { render :show, status: :ok, location: @question_select }
        else
          format.html { render :edit }
          format.json { render json: @question_select.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/question_selects/1
    # DELETE /admin/question_selects/1.json
    def destroy
      @question_select.destroy
      respond_to do |format|
        format.html { redirect_to question_selects_url, notice: 'QuestionSelect was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_question_select
        @question_select = QuestionSelect.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def question_select_params
        params.require(:question_select).permit(:question_id, :content, :is_right)
      end
  end
end

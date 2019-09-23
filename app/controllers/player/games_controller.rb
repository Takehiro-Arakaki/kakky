module Player
  class GamesController < BaseController

    before_action :set_levels, only: %i[index]
    before_action :set_level, only: %i[show]
    # before_action :set_question

    # GET /games
    # GET /games.json
    def index
      @levels = Level.all
    end

    def selection
    end

    # GET /games/1
    # GET /games/1.json
    def show
      @questions = @level.questions
      # Kaminari10件ずつ表示
      @questions = @questions.page(params[:page]).per(10).order(id: :ASC)
    end

    # GET /games/new
    def new
      @game = Game.new
    end

    # GET /games/1/edit
    def edit
    end

    # POST /games
    # POST /games.json
    def create
      @game = Game.new(game_params)

      respond_to do |format|
        if @game.save
          format.html { redirect_to @game, notice: 'Game was successfully created.' }
          format.json { render :show, status: :created, location: @game }
        else
          format.html { render :new }
          format.json { render json: @game.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /games/1
    # PATCH/PUT /games/1.json
    def update
      respond_to do |format|
        if @game.update(game_params)
          format.html { redirect_to @game, notice: 'Game was successfully updated.' }
          format.json { render :show, status: :ok, location: @game }
        else
          format.html { render :edit }
          format.json { render json: @game.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /games/1
    # DELETE /games/1.json
    def destroy
      @game.destroy
      respond_to do |format|
        format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
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

      # def set_question
      #   # FIXME findでなんでIDが取得できないか不明
      #   @question = Question.find(params[:id])
      # end

  end
end
class VoteCardsController < ApplicationController
  before_action :set_vote_card, only: [:show, :edit, :update, :destroy]

  # GET /vote_cards
  # GET /vote_cards.json
  def index
    @vote_cards = VoteCard.all
  end

  # GET /vote_cards/1
  # GET /vote_cards/1.json
  def show
  end

  # GET /vote_cards/new
  def new
    @vote_card = VoteCard.new
  end

  # GET /vote_cards/1/edit
  def edit
  end

  # POST /vote_cards
  # POST /vote_cards.json
  def create
    @vote_card = VoteCard.new(vote_card_params)

    respond_to do |format|
      if @vote_card.save
        format.html { redirect_to @vote_card, notice: 'VoteCard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vote_card }
      else
        format.html { render action: 'new' }
        format.json { render json: @vote_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vote_cards/1
  # PATCH/PUT /vote_cards/1.json
  def update
    respond_to do |format|
      if @vote_card.update(vote_card_params)
        format.html { redirect_to @vote_card, notice: 'VoteCard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vote_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_cards/1
  # DELETE /vote_cards/1.json
  def destroy
    @vote_card.destroy
    respond_to do |format|
      format.html { redirect_to vote_cards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote_card
      @vote_card = VoteCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_card_params
      params.require(:vote_card).permit(:name)
    end
end

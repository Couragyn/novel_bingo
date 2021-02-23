class BingosController < ApplicationController
  before_action :set_bingo, only: %i[ show edit update destroy ]
  include Devise::Controllers::Helpers 

  # GET /bingos or /bingos.json
  def index
    @bingos = Bingo.all
  end

  # GET /bingos/1 or /bingos/1.json
  def show
    @bingo = Bingo.find(params[:id])
    @card = Card.find(@bingo.card_id)
    @squares = Square.where(card_id: @card.id).order("id ASC").all
    @bingo_squares = BingoSquare.where(bingo_id: @bingo.id).order("id ASC").all

  end

  # GET /bingos/new
  def new
    @bingo = Bingo.new
  end

  # GET /bingos/1/edit
  def edit
  end

  # POST /bingos or /bingos.json
  def create
    @bingo = Bingo.new(bingo_params)

    respond_to do |format|
      if @bingo.save
        format.html { redirect_to @bingo, notice: "Bingo was successfully created." }
        format.json { render :show, status: :created, location: @bingo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bingo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bingos/1 or /bingos/1.json
  def update
    respond_to do |format|
      if @bingo.update(bingo_params)
        format.html { redirect_to @bingo, notice: "Bingo was successfully updated." }
        format.json { render :show, status: :ok, location: @bingo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bingo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bingos/1 or /bingos/1.json
  def destroy
    @bingo.destroy
    respond_to do |format|
      format.html { redirect_to bingos_url, notice: "Bingo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def add_card_to_my_bingo
    @card = Card.find(params[:card])
    squares = Square.where(card_id: params[:card]).order("id ASC").all

    @bingo = Bingo.new(card_id: params[:card], user_id: current_user)
    squares.each do |s|
      @bingo.bingo_squares.build(square_id: s.id)
    end

    respond_to do |format|
      if @bingo.save
        puts "success =============================="
        format.html { redirect_to @bingo, notice: "Bingo was successfully added." }
        format.json { render :show, status: :created, location: @bingo }
      else
        puts "fail =============================="
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bingo.errors, status: :unprocessable_entity }
      end
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bingo
      @bingo = Bingo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bingo_params
      params.fetch(:bingo, {})
    end
end

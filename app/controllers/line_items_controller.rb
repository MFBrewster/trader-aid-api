class LineItemsController < ApplicationController
  before_action :set_line_item, only: [:show, :update, :destroy]

  # GET /line_items
  # GET /line_items.json
  # def index
  #   @line_items = LineItem.all
  #
  #   render json: @line_items
  # end

  # GET /line_items/1
  # GET /line_items/1.json
  # def show
  #   render json: @line_item
  # end

  # POST /line_items
  # POST /line_items.json
  def create
    @line_item = LineItem.new(line_item_params)

    if @line_item.save
      render json: @line_item, status: :created, location: @line_item
    else
      render json: @line_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    @line_item = LineItem.find(params[:id])

    if @line_item.update(line_item_params)
      head :no_content
    else
      render json: @line_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @line_item.destroy

    head :no_content
  end

  private

    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    def line_item_params
      params.require(:line_item).permit(:id, :quantity, :product_id, :order_id)
    end
end

class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :update, :destroy]

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = Expense.all

    render json: @expenses
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
    render json: @expense
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params)

    if @expense.save
      render json: @expense, status: :created, location: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    @expense = Expense.find(params[:id])

    if @expense.update(expense_params)
      head :no_content
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy

    head :no_content
  end

  private

    def set_expense
      @expense = Expense.find(params[:id])
    end

    def expense_params
      params[:expense]
    end
end

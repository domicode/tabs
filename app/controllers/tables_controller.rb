class TablesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @user = current_user
    @table = @user.tables.new
  end

  def create
    @user = current_user
    @table = @user.tables.create(table_params)

    if @table.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private

  def table_params
    params.require(:table).permit(:name)
  end

end

class TableTabsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @user = current_user
    @tab = @user.table_tabs.new
  end

  def create
    @user = current_user
    @tab = @user.table_tabs.create(table_tabs_params)

    if @tab.save
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

  def table_tabs_params
    params.require(:table_tab).permit(:location, :date, :paid_by)
  end

end

class TableTabsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @table = Table.find(params[:table_id])
    @tab = @table.table_tabs.new
  end

  def create
    @table = Table.find(params[:table_id])
    @tab = @table.table_tabs.create(table_tabs_params)

    if @tab.save
      redirect_to current_user
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

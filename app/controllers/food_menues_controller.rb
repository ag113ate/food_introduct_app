class FoodMenuesController < ApplicationController
  def top
    @foods = Food.all
  end
  
  def new
    @food = Food.new
  end
  
  def edit
    @food = Food.find(params[:id])
    
    path = Rails.application.routes.recognize_path(request.referer)
    @act = path[:action]
  end
  
  def create
    @food = Food.new(food_params)
    respond_to do |format|
      if (@food.save == true)
        format.html {redirect_to "/food_menues/show/#{@food.id}", notice: "作成しました"}
      else
        format.html {render action: "new"}
      end
    end
  end
  
  def update
    @food = Food.find(params[:id])
    
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to "/food_menues/show/#{@food.id}", notice: "更新しました"}
      else
        format.html{render action: "edit"}
      end
    end
  end
  
  def show
    @food = Food.find(params[:id])
  end
  
  def destroy_confirm
    @food = Food.find(params[:id])
    
    path = Rails.application.routes.recognize_path(request.referer)
    @act = path[:action]
  end
  
  def destroy
    @food = Food.find(params[:id])
    
    @food.destroy
    
    respond_to do |format|
      format.html { redirect_to "/food_menues/top", notice: "削除しました"}
    end
  end

  private
    def food_params
      params.require(:food).permit(:menu, :description)
    end
end

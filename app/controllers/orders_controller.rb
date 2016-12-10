class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    if not params['done'].nil?
      p 'Order done !'
      o = Order.find(params['done'])
      o.done = 1
      o.save
    end
    @orders = Order.order(created_at: :desc)
  end

  def create
    @order = Order.new(order_params)

      if @order.save
        flash[:success] = "Merci, la commande est prise en compte ! <br /><a href='/orders'>Voir l'attente</a>"
        redirect_to '/'
      else
        render :new 
      end

  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:requester, :cocktail_id)
    end
end

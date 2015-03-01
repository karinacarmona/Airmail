class OrdersController < ApplicationController
  def index
    @order = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new

  end

  def create
    @order = Order.new(order_params)

    @order.save
    redirect_to @order
  end

  private

    def order_params
      params.require(:order).permit(:first_name, :last_name, :receiver, :email, :address, :sent, :payment_callback)
    end

end

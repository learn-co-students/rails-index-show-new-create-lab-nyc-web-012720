class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    render :index
  end

  def create
    @coupon = Coupon.create(coupon_params)
    redirect_to @coupon
  end

  def new
    render :new
  end

  def edit
    render :edit
  end

  def show
    @coupon = Coupon.find(params[:id])
    render :show
  end

  def update
    redirect_to "/coupons/#{@coupon.id}"
  end

  def destroy
    redirect_to :coupons
  end

  private

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end

end

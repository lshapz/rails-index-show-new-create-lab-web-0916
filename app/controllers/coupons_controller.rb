class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all 
  end

  def new
        @coupon = Coupon.new
  end


  def show

    @coupon = Coupon.find(params[:id])
  end
  def create
    @coupon = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  # private
  # def coupon_params
  #   params.require(:coupon).permit(:coupon_code, :store)
  # end 
end

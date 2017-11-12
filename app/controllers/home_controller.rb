class HomeController < ApplicationController
  def index
    if params[:drug].present?
      drug = Medicine.find_by(name:params[:drug])
      if drug.nil?
        @status = nil
      else
        @status = "Hola its working"
        shops = Shop.all
        total_count = 0
        @locations = []
        @shop_details = []
        shops.each do |shop|
          med_count = MedicineCount.find_by(shop_id:shop.id, medicine_id:drug.id)
          if med_count
            temp = [shop.latitude,shop.longitude,med_count.count]
            @shop_details.push [shop.name,shop.address]
            @locations.push temp
          end
        end
        @longitude = params[:longitude]
        @latitude = params[:latitude]
        @alternative_drugs = drug.alternatives
      end
    else
      @status = "search"
    end
  end
end

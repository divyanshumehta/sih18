class HomeController < ApplicationController
  def index
    if params[:drug].present?
      @status = "Hola its working"
      drug = Medicine.find_by(name:params[:drug])
      shops = Shop.all
      total_count = 0
      @locations = []
      shops.each do |shop|
        med_count = MedicineCount.find_by(shop_id:shop.id, medicine_id:drug.id)
        if med_count
          temp = [shop.latitude,shop.longitude,med_count.count]
          
          @locations.push temp
        end
      end
      @longitude = params[:longitude]
      @latitude = params[:latitude]
      @alternative_drugs = drug.alternatives
    else
      @status = nil
    end
  end

end

class Api::V1::BusinessesController < ApplicationController

    def index
        businesses = Business.all
        
        render json: businesses
      end
    
      def create
        business = Business.new(business_params)
        if business.save
          render json: business
        else
          render json: {error: 'Error creating business'}
        end
      end
    
      def show
        business = Business.find(params[:id])
        render json: business
      end
    
      def update
        business = Business.find(params[:id])
        business.update(business_params)
        render json: business
      end
    
      def destroy
        business = Business.find(params[:id])
        business.destroy
        # render json: business.all
      end
    
      private
    
      def business_params
        params.require(:business).permit(:name, :number, :email, :industry)
      end
end

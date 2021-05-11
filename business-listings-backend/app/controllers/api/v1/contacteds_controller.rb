class Api::V1::ContactedsController < ApplicationController
    #  before_action :set_contacted
      before_action :set_business#, only: [:show, :update, :edit, :]

    def index
        contacteds = @business.contacteds
        
        render json: contacteds
      end
    
      def create
        contacted = @business.contacteds.new(contacted_params)
        puts contacted.inspect
        if contacted.save
          render json: @business
        else
          puts contacted.errors.inspect
          render json: {error: 'Error creating contacted'}
        end
      end
    
      def show
        contacted = @business.contacteds.find_by(id: params[:id])
        render json: contacted
      end
    
      def update
        contacted = Contacted.find(params[:id])
        contacted.update(contacted_params)
        render json: contacted
      end
    
      def destroy
        contacted = @business.contacteds.find_by(id: params[:id])
        contacted.destroy
        render json: @business
      end
    
      private
    
      def set_business
        @business = Business.find(params[:business_id])
      end
      
    
      def contacted_params
        params.require(:contacted).permit(:business_id, :name, :number, :email, :date, :message)
      end
end

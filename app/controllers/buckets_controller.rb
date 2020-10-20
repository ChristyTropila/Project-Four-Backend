class BucketsController < ApplicationController

    def index
        @buckets=Bucket.all
        render json: @buckets
    end

    def create
    @buckets=[]
    params[:trick_treat_id].each do |theIds|
    @bucket=Bucket.create(user_id: params[:user_id], trick_treat_id: theIds)
    @buckets.push(@bucket)
   end
   render json: @buckets
    end

    def destroy

     @trick_treat=TrickTreat.find(params[:id])
     @bucket=Bucket.find_by(trick_treat_id: @trick_treat.id, user_id: params[:user_id])
     
     @bucket.destroy

      render json: @bucket
    end



    private
    
    def bucket_params
        params.permit(:user_id, :trick_treat_id)
    end

end

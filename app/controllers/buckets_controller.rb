class BucketsController < ApplicationController

    def index
        @buckets=Bucket.all
        render json: @buckets
    end
end

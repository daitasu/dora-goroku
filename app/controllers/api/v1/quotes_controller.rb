module Api
  module V1
    class QuotesController < ApplicationController
      def index
        quotes = Quote.order(created_at: :desc)
        render json: quotes
      end

      def show
        quote = Quote.find(params[:id])
        render json: quote
      end
    end
  end
end

module Api
  module V1
    class QuotesController < ApplicationController
      def index
        quotes = Quote.where("quote like ?","%#{params[:keyword]}%").order(created_at: :desc).map do |quote|
          quote.slice(:character, :quote)
        end
        render json: quotes
      end

      def random
        quote = Quote.order(Arel.sql("RANDOM()")).first
        render json: quote.slice(:character, :quote)
      end
    end
  end
end

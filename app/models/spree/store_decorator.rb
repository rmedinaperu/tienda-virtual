module Spree
  module StoreDecorator
    extend ActiveSupport::Concern

    included do
      has_one_attached :logo
      has_one_attached :favicon
    end
  end
end

Spree::Store.include(Spree::StoreDecorator)

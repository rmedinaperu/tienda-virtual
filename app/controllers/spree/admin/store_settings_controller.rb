module Spree
  module Admin
    class StoreSettingsController < Spree::Admin::BaseController
      def edit
        @store = current_store
      end

      def update
        @store = current_store
        if @store.update(store_params)
          flash[:success] = I18n.t("spree.successfully_updated", resource: I18n.t("spree.store"))
          redirect_to edit_admin_store_settings_path
        else
          flash[:error] = @store.errors.full_messages.join(", ")
          render :edit
        end
      end

      def logo
        if current_store&.logo&.attached?
          redirect_to main_app.url_for(current_store.logo), allow_other_host: true
        else
          redirect_to ActionController::Base.helpers.asset_path("logo/solidus.svg")
        end
      end

      private

      def store_params
        params.require(:store).permit(:logo, :favicon)
      end
    end
  end
end

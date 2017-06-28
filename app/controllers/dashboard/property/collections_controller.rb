module Dashboard
  module Property
    class CollectionsController < InheritedResources::Base
      before_action :authenticate_user!

      private
      def collection_params
        params.require(:collection).permit(:amount, :section_id, :property_id, :user_id)
      end
    end
  end
end


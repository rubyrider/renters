class Property::CollectionsController < InheritedResources::Base

  private
    def collection_params
      params.require(:collection).permit(:amount, :section_id, :property_id, :user_id)
    end
end


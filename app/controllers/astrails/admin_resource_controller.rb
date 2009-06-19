module Astrails
  class AdminResourceController < Astrails::ResourceController
    unloadable

    index do
      before {build_object;load_object}
      wants.html {render :template => "astrails/resource_admin_controller/index"}
    end

    helper_method :object_name

    new_action do
      wants.html {render :template => "astrails/resource_admin_controller/edit"}
    end

    create do
      wants.html { redirect_to collection_url }
      failure.wants.html {render :template => "astrails/resource_admin_controller/index"}
    end

    show.wants.html {render :template => "astrails/resource_admin_controller/edit"}

    edit do
      wants.html {render :template => "astrails/resource_admin_controller/edit"}
    end

    update do
      wants.html { redirect_to collection_url }
      failure.wants.html {render :template => "astrails/resource_admin_controller/edit"}
    end

  end
end

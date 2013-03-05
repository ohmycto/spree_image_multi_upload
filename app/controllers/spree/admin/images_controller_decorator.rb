Spree::Admin::ImagesController.class_eval do

  def create
    invoke_callbacks(:create, :before)
    @object.attributes = params[object_name]
    @object.attachment = params[object_name][:attachment].first

    if @object.save
      invoke_callbacks(:create, :after)
      respond_to do |format|
        format.html { render :json => @object.to_jq_upload, :content_type => 'text/html', :layout => false }
        format.json { render json: @object.to_jq_upload, status: :created }
      end
    else
      respond_to do |format|
        format.html { render :action => 'index' }
        format.json { render :json => @object.errors, status: :unprocessable_entity, :layout => false }
      end
    end
  end

  def multi_upload

  end

  def new_actions
    [:new, :create, :multi_upload]
  end
end

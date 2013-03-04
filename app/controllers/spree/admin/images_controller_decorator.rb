Spree::Admin::ImagesController.class_eval do
  def multi_upload

  end

  def new_actions
    [:new, :create, :multi_upload]
  end
end

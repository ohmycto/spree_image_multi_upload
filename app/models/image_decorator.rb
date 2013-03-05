Spree::Image.class_eval do

  # TODO: find the way to generate edit and delete urls here
  #include Rails.application.routes.url_helpers
  def to_jq_upload
    {
        'name' => read_attribute(:attachment_file_name),
        'size' => read_attribute(:attachment_file_size),
        'thumbnail_url' => attachment.url(:mini, false),
        'url' => attachment.url(:product, false),
        'edit_url' => '',
        'delete_url' => '',
        'delete_type' => 'DELETE'
    }
  end

end

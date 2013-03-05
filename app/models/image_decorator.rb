Spree::Image.class_eval do

  #include Rails.application.routes.url_helpers

  def to_jq_upload
    {
        'name' => read_attribute(:attachment_file_name),
        'size' => read_attribute(:attachment_file_size),
        'url' => attachment.url(:mini, false),
        'delete_url' => '',
        'delete_type' => 'DELETE'
    }
  end

end

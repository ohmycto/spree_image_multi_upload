Deface::Override.new(
    :virtual_path => 'spree/admin/images/index',
    :insert_before => %q{code[erb-silent]:contains(':page_actions')},
    :text => %q{<% content_for :page_actions do %><li><%= link_to_with_icon('icon-upload', t('multi_upload.title'), multi_upload_admin_product_images_path(@product), :id => 'multi_upload_images_link', :class => 'button', :remote => true) %></li><% end %>},
    :name => 'add_images_multi_upload_button'
)

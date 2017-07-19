ActiveAdmin.register Piece do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :title, :person, :size, :description, :styles, :techniques, :media, :value, :location, :active, :image

 show do |t|
    attributes_table do
      row :title
      row :size
      row :description
      row :value
      row :location
      row :active
      row :image do
        piece.image? ? image_tag(piece.image.url, height: '100') : content_tag(:span, "No photo yet")
      end
    end
  end

 form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :title
      f.input :person
      f.input :size
      f.input :description
      f.input :styles
      f.input :techniques
      f.input :media
      f.input :value
      f.input :location
      f.input :active
      f.input :image, hint: f.piece.image? ? image_tag(piece.image.url, height: '100') : content_tag(:span, "Upload Dat JPG/PNG/GIF image son")
      end
    end

end

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
# # end
# controller do
#   def create
#     params[:piece][:person] = Person.find(params[:piece][:person])
#     super
#   end
# end
index do
  column :title
  column "Artist" do |piece|
    link_to piece.person.full_name, piece.person
  end
  column :size
  column :value
  column :location
  actions
end

# update do
  # p params
#   actions
# end

permit_params :title, :person_id, :size, :description, {style_ids:[]}, {technique_ids:[]}, {media_ids:[]}, :value, :location, :active, :image

 show do |t|
    attributes_table do
      row :title
      row "Artist" do |piece|
        link_to piece.person.full_name, piece.person
      end
      row :size
      row :description
      row :styles do
        t.styles.map{|s| s.style}.join(', ')
      end
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
      f.input :person_id, as: :select, collection: Person.all.map{|a| [a.full_name,a.id]}
      f.input :size
      f.input :description
      #f.select :styles, options_for_select(Style.all.map{|s|[s.style, s.id]})
      # Style.all.each do |style|
      #   f.check_box("styles", {value: style.id} )
      #   f.label(:styles, style.style)
      # end
      f.input :styles, as: :check_boxes, collection: Style.pluck(:style,:id)
      f.input :techniques
      f.input :media
      f.input :value
      f.input :location
      f.input :active
      f.input :image, hint: f.piece.image? ? image_tag(piece.image.url, height: '100') : content_tag(:span, "Upload Dat JPG/PNG/GIF image son")
      end
       f.actions
    end

end

ActiveAdmin.register Customer do

  form do |f|
      f.inputs "Details" do
        f.input :first_name
        f.input :last_name
        f.input :address
        f.input :city
        f.input :country, :as => :string
        f.input :postal_code
        f.input :province_id
      end    
      f.actions
    end
end

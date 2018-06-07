class AsanaBenefit
  include AttrJson::Model
  include AttrJson::Model::CocoonCompat
  attr_json :name, :string


  # validates :name, presence: true

end

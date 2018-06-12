class Asana < ApplicationRecord
  extend FriendlyId
  friendly_id :sanskrit_name, use: :slugged
  include AttrJson::Record
  include AttrJson::Record::QueryScopes
  include AttrJson::NestedAttributes

  attr_json :chakras, AsanaChakra.to_type, array: true
  attr_json :benefits, AsanaBenefit.to_type, array: true
  attr_json :body_parts, AsanaBodyPart.to_type, array: true
  attr_json :restrictions, AsanaRestriction.to_type, array: true
  attr_json :effects, AsanaEffect.to_type, array: true
  attr_json_accepts_nested_attributes_for :chakras, :benefits, :body_parts, :restrictions, :effects

  Chakras = ["Muladhara", "Svadhisthana", "Manipura", "Anahata", "Visuddha", "Ajna", "Sahasrara" ]
  Benefits = ["Better flexibility", "Better posture", "Muscle strength", "Tones the body", "Better sleep", "More energy", "Stronger Bones.", "Improves digestion"]
  BodyParts = ["Head", "Neck", "Shoulder", "Arms", "Chest", "Breast", "Waist", "Belly", "Abdomen", "Hip", "Pelvis", "Liver", "Uterus", "Pancreas", "Thigh", "Knee"]
  Restrictions = ["Children under age of 12","During menstruation", "During pregnancy"]
end

FactoryBot.define do
  factory :asana do
    sanskrit_name ""
    name          {FFaker::Book.unique.title}
    asana_order   ""
    introduction  {FFaker::Book.description}
    technique     {FFaker::Book.description}
    variation     {FFaker::Book.description}
    concentration {FFaker::Book.description}
    afterward     {FFaker::Book.description}
  end
end

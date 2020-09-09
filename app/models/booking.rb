class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :property

    validates :start_date, presence: true
    validates :number_of_guests, presence: true
    validates :number_of_guests, numericality: { only_integer: true }

    accepts_nested_attributes_for :property, reject_if: :all_blank

    # def property_attributes=(property_attributes)
    #     return if property_attributes.values.any? {|attribute| attribute == ""}
    #     property = Property.create(property_attributes)
    #     self.property = property
    #     self.save
    # end
end

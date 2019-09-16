# == Schema Information
#
# Table name: houses
#
#  id         :bigint           not null, primary key
#  address    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class House < ApplicationRecord
    validates :address, presence: true
    validate(:check_address_length)


    has_many(:residents, {
        primary_key: :id, #house id
        foreign_key: :house_id,
        class_name: :Person
    })

    def check_address_length
        unless self.address.length >= 5
            errors[:address] << "is too short, must be longer than 5 characters"
        end
    end


end


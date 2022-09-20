class Attack < ApplicationRecord
    belongs_to :monster
    belongs_to :victim

    validate :restriction

    def restriction
        if monster.scare_level > 5 && victim.birthdate.year < 2004
            errors.add(:monster_id, message: "muy picado el monster")
        end
    end
end
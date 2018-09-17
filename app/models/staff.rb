class Staff < ApplicationRecord
   validates :staff_num,  presence: true, length: { maximum: 10 },uniqueness: true

end

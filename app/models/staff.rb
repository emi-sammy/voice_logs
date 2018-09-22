class Staff < ApplicationRecord
   validates :staff_num,  presence: true, length: { maximum: 10 },uniqueness: true
   validates :release_time, length: { maximum:2 }

end

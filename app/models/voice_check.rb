class VoiceCheck < ApplicationRecord

 validates :staff_num,  presence: true, length: { maximum: 10 }
end

class AddDatetimesToVoiceChecks < ActiveRecord::Migration[5.1]
  def change
    add_column :voice_checks, :datetime, :datetime
  end
end

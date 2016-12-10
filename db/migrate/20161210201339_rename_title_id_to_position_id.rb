class RenameTitleIdToPositionId < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.rename :title_id, :position_id
    end

  end
end

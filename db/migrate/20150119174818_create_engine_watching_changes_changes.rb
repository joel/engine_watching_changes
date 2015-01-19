class CreateEngineWatchingChangesChanges < ActiveRecord::Migration
  def change
    create_table :engine_watching_changes_changes do |t|

      t.timestamps null: false
    end
  end
end

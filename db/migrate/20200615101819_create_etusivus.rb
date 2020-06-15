class CreateEtusivus < ActiveRecord::Migration[6.0]
  def change
    create_table :etusivus do |t|

      t.timestamps
    end
  end
end

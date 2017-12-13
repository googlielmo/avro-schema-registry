class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table(:subjects, id: :bigserial) do |t|
      t.text :name, null: false
      t.timestamps null: false
    end

    add_index(:subjects, :name, unique: true)
  end
end

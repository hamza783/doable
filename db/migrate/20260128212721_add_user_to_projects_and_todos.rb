class AddUserToProjectsAndTodos < ActiveRecord::Migration[8.0]
  def change
    add_reference :projects, :user, null: false, foreign_key: true
    add_reference :todos, :user, null: false, foreign_key: true
  end
end

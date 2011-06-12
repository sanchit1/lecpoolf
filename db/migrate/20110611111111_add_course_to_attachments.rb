class AddCourseToAttachments < ActiveRecord::Migration
  def self.up
    add_column :attachments, :course1, :string
  end

  def self.down
    remove_column :attachments, :course1
  end
end

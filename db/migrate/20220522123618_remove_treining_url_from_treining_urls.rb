class RemoveTreiningUrlFromTreiningUrls < ActiveRecord::Migration[6.1]
  def change
    remove_column :treining_urls, :treining_url, :string
  end
end

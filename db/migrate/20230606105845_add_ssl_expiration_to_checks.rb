# frozen_string_literal: true

class AddSslExpirationToChecks < ActiveRecord::Migration[6.0]
  def change
    add_column :checks, :ssl_expiration, :string
    add_column :checks, :ssl_expires_in, :string
  end
end

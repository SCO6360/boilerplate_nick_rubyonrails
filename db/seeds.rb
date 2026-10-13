# Idempotent seeds. The demo user is only created outside production.
unless Rails.env.production?
  User.find_or_create_by!(email_address: "demo@example.com") do |user|
    user.password = "password"
  end
end

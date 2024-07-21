# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing data
ProgrammingLanguage.destroy_all

# Seed data
ProgrammingLanguage.create([
  { title: 'Ruby', description: 'A dynamic, open source programming language with a focus on simplicity and productivity.', link: 'https://www.ruby-lang.org/' },
  { title: 'Python', description: 'A programming language that lets you work quickly and integrate systems more effectively.', link: 'https://www.python.org/' },
  { title: 'JavaScript', description: 'A versatile language primarily used for creating interactive web pages.', link: 'https://developer.mozilla.org/en-US/docs/Web/JavaScript' },
  { title: 'Java', description: 'A high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.', link: 'https://www.java.com/' },
  { title: 'C++', description: 'A general-purpose programming language created as an extension of the C programming language.', link: 'https://isocpp.org/' }
])

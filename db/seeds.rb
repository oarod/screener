# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

module EvidenceSeeder
  class << self

    def category
      %w(Transcript Email Document)[rand(3)]
    end

    def number_of_pages
      (rand(10) + 1)
    end

    def filed_at
      year = 2000 + rand(16) + 1
      day = rand(28) + 1
      month = rand(12) + 1
      Date.new(year, month, day)
    end

    def file_type
      Faker::File.extension
    end

    def title
      Faker::Hipster.sentence(3)
    end
  end
end

ActiveRecord::Base.transaction do
  person_ids = 30.times.map do |i|
    Person.create!(name: Faker::Name.name, age: rand(70) + 1,
                   title: Faker::Name.title).id
  end

  1000.times do |i|
    category = EvidenceSeeder.category
    evidence = Evidence.create!(identifier: "TAB #{i}",
                                title: EvidenceSeeder.title,
                                filed_at: EvidenceSeeder.filed_at,
                                category: EvidenceSeeder.category,
                                file_type: EvidenceSeeder.file_type)

    (1..EvidenceSeeder.number_of_pages).each do |page_number|
      page = Page.create!(number: page_number,
                          text: Faker::Hipster.paragraph,
                          evidence: evidence)
    end

    evidence.person_id = person_ids[rand(30) + 1]
    evidence.save!
  end
end

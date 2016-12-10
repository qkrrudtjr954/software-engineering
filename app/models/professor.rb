class Professor < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      professor_hash = row.to_hash # exclude the price field
      professor = Professor.where(id: professor_hash["id"])

      if professor.count == 1
        professor.first.update_attributes(professor_hash)
      else
        Professor.create!(professor_hash)
      end
    end
  end
end

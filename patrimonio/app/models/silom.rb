class Silom < ApplicationRecord
    require 'csv'

    #Import csv file passed throught as an argument
    def self.import(file)
        #a block that runs trough a loop in our csv data
        CSV.foreach(file.path, headers: true) do |row|
            #creates a Silom for each row in the CSV file
            Silom.create! row.to_hash
        end
    end 
end

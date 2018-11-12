class Silom < ApplicationRecord
  has_one :item

  require 'csv'

  #Import csv file passed throught as an argument
  def self.import(file)

    #a block that runs trough a loop in our csv data
    CSV.foreach(file.path,encoding:"utf-8",headers: true) do |row|
      #creates a Silom for each row in the CSV file
      Silom.create(
        :dependencia => row["DEPENDENCIA"],
        :conta       => row["CONTA"] ,
        :classe      => row["CLASSE"],
        :bmp         => row["Nº BMP"],
        :nomeclatura => row["NOMECLATURA/COMPONENTE"],
        :serie       => row["Nº SERIE"],
        :pn          => row["Nº PN"],
        :sispat      => row["Nº SISPAT"],
        :fcg         => row["FCG"],
        :etiqueta    => row["EIQUETA METÁLICA"],
        :qtd         => row["QTD"],
        :valor_atualizado      => row["VL. ATUALIZ."],
        :valor_depreciado      => row["VL. DEPREC. ACUM."],
        :valor_liquido         => row["VL. LIQUIDO"],
        :situacao              => row["SITUACAO"] 
      )
    end
  end

end

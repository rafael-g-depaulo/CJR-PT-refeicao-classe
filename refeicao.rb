class Refeicao
  @@refVendidas = 0
  @@valorTotal  = 0

  def initialize nome, tipo, desc, price, disp
    @nome = nome
    @tipo = tipo
    @desc = desc
    @price = price*100
    @disp = disp

    @@refVendidas += 1
    @@valorTotal  += @price
  end

  # getters & settters
  attr_accessor :nome
  attr_accessor :tipo
  attr_accessor :desc
  attr_accessor :disp

  def self.qntRefVendidas
    @@refVendidas
  end

  def self.valorTotalVendas
    "R$ #{(@@valorTotal/100).floor}, #{(@@valorTotal%100).floor}"
  end

  def price= price
    @price = price*100
  end
  def price
    "R$ #{(price/100).floor}, #{price%100}"
  end

  def disp
    if (@desc) then "Disponível"
    else "indisponível"
    end
  end
end
class Etiqueta
  attr_reader :ngrasas, :ngrasas_s, :hidratos, :azucares, :proteinas, :sal
    def initialize(ngrasas, ngrasas_s, hidratos, azucares, proteinas, sal, )
      @ngrasas = ngrasas
      @ngrasas_s = ngrasas_s
      @hidratos = hidratos
      @azucares = azucares
      @proteinas = proteinas
      @sal = sal

      
    end

    def valor_energetico_kj()

      @ngrasas*37  + @hidratos*17  + @azucares*17  + @proteinas*17 + @sal*25

    end

    def valor_energetico_kcal()

      @ngrasas*9 + @hidratos*4 + @polialcoholes*2.4 + @azucares*4  + @proteinas*4 + @sal*6

    end

    def ingesta_referencia(x)
      suma = ngrasas + ngrasas_s + hidratos + azucares + proteinas + sal 
      (x*100)/suma
    end

    def to_s
      a =  " \t\t\tPorcion \t IR \n"
      a +=  " Valor energetico\t #{self.valor_energetico_kj} kJ\t 8.400kJ\n"
      a +=  "     kJ / kcal \t\t #{self.valor_energetico_kcal} kcal\t 2000kcal\n"
      a +=  " Grasas\t\t\t #{@ngrasas} g.\t\t #{self.ingesta_referencia(@ngrasas)}%\n"
      a +=  " Grasas saturadas\t #{@ngrasas_s} g.\t\t #{self.ingesta_referencia(@ngrasas_s)}%\n"
      a +=  " Hidratos de carbono\t #{@hidratos} g.\t\t #{self.ingesta_referencia(@hidratos)}%\n"
      a +=  " Azucares\t\t #{@azucares} g.\t\t #{self.ingesta_referencia(@azucares)}%\n"
      a +=  " Proteinas\t\t #{@proteinas} g.\t\t #{self.ingesta_referencia(@proteinas)}%\n"
      a +=  " Sal\t\t\t #{@sal} g.\t\t #{self.ingesta_referencia(@sal)}%\n"
        
    end
end

require 'lib/version'
RSpec.describe Etiqueta do

  before :each do
      @p1 = Etiqueta.new(0,1,2,3,4,5 ,6,7,8,9,10,11,12)
    end

    describe "# almacenamiento de las declaraciones obligatorias"
      it "Se almacena correctamente la cantidad de grasas" do
        expect(@p1.ngrasas).to eq(0)
      end
      it "Se almacena correctamente la cantidad de grasas saturadas" do
        expect(@p1.ngrasas_s).to eq(1)
      end
      it "Se almacena correctamente los hidratos de carbono" do
        expect(@p1.hidratos).to eq(2)
      end
      it "Se almacena correctamente los azucares" do
        expect(@p1.azucares).to eq(3)
      end
      it "Se almacena correctamente las proteinas" do
        expect(@p1.proteinas).to eq(4)
      end
      it "Se almacena correctamente la sal" do
        expect(@p1.sal).to eq(5)
      end


    

    describe "# calculo del valor energetico"
    it "Se calcula correctamente el valor energetico en kJ" do
      expect(@p1.valor_energetico_kj()).to eq(1021)
    end
    it " valor energetico en kcal" do
      expect(@p1.valor_energetico_kcal()).to eq(246.2)
    end

    describe "#la ingesta de referencia"
    it "Se calcula correctamente la ingesta de referencia" do
      expect(@p1.ingesta_referencia(@p1.sal)).to eq(6)
    end

    describe "# formatear "
    it "Se formatea la etiqueta correctamente" do
      expect(@p1.to_s).to be_a(String)
    end

end

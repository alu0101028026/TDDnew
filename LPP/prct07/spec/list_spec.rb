require 'lib/lista.rb'

RSpec.describe Etiqueta do

  before :each do

      @e1 = Etiqueta.new(0,0,0,0,0, 5 ,20,0,0,0,0,0,0)
      @e2 = Etiqueta.new(0,0,0,0,0, 6 ,0,0,0,0,0,0,0)
      @e3 = Etiqueta.new(0,0,0,0,0, 1 ,0,0,0,0,0,0,0)
      @e4 = Etiqueta.new(0,0,0,0,0, 2 ,0,0,0,0,0,50,0)
      @e5 = Etiqueta.new(0,0,0,0,0, 8 ,0,0,0,0,0,0,0)
      
    end

  describe "# lista con etiquetas" do

    it "se inserta  en la lista " do
      list = DoublyList.new()
      expect(list.insertar(@e1)).to be_a(Node)
    end

    it "extraccion de la lista" do
      list = DoublyList.new()
      expect(list.insertar(@e1)).to be_a(Node)
      expect(list.extraccion).to be_a(Node)
    end

    it "se comprueba si está vacia" do
      list = DoublyList.new()
      expect(list.empty).to be true
      expect(list.insert(@e1)).to be_a(Node)
      expect(list.empty).to be false
      expect(list.extraccion).to be_a(Node)
      expect(list.empty).to be true
    end

    it "se comprueba tamaño" do
      list = DoublyList.new()
      expect(list.length).to eq(0)
      list.insertar(@e1)
list.insertar(@e2)
      expect(list.length).to eq(2)
    end

    it "devuelve contenido" do
      list = DoublyList.new()
      list.insertar(@e1)
      list.insertar(@e5)
      expect(l.to_s).to be_a(String)
    end
  end

  describe "# clasificando la lista segun la sal" do
    it "se clasifica correctamente la sal " do
      list = DoublyList.new()
      list.insertar(@e1)
      list.insertar(@e2)
      list.insertar(@e3)
      list.insertar(@e4)
      list.insertar(@e5)
      

      expect(clasificar(list)).to eq("{ 5,1, 2, 3, 4 }")
    end
  end


end

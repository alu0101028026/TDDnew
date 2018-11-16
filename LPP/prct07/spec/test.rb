require 'lib/list'


describe DoublyList do

	before :each do
          @n1={ name: "twix",valor_energetico: "2540 KJ/4230 Kcal", grasas: 60, gsat: 60, hidcar: 250, azucar: 50, proteina: 180, sal: 20}
          @n2={name: "twix", valor_energetico: "2540 KJ/4230 Kcal", grasas: 60, gsat: 60, hidcar: 250, azucar: 50, proteina: 180, sal: 50}
          @n3={name: "twix",  valor_energetico: "2540 KJ/4230 Kcal", grasas: 60, gsat: 60, hidcar: 250, azucar: 50, proteina: 180, sal: 90}
          @n4={name: "twix",  valor_energetico: "2540 KJ/4230 Kcal", grasas: 60, gsat: 60, hidcar: 250, azucar: 50, proteina: 180, sal: 30}
	  @n5={name: "twix",  valor_energetico: "2540 KJ/4230 Kcal", grasas: 60, gsat: 60, hidcar: 250, azucar: 50, proteina: 180, sal: 60}
	end
	  @list = DoublyList.new(@n1)
	

	it "Empty list" do
		expect(@list.empty).to eq(false)
	end

	it "head element " do
	expect(@list.head).to eq(@n1)
end


	it " node to tail" do
		p=@n1
		@list.add_to_tail(p)
		expect(@list.gettail).to eq(@n1)
		a=@n2
		@list.add_to_tail(a)
                expect(@list.gettail).to eq(@n2)
		b=@n3
@list.add_to_tail(b)
                expect(@list.gettail).to eq(@n3)
		c=@n4
@list.add_to_tail(c)
                expect(@list.gettail).to eq(@n4)

	end

it "node to head" do
	d=@n5
	@list.add_to_head(d)
	expect(@list.head).to eq(@n5)

end

it "delete node" do
	e=@n4
	@list.delete(e)
	expect(@list.gettail).to eq(@n3)
end
end





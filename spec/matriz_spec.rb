require 'matrix.rb'

  describe Matriz do
	before :each do
	    @p1 = Matriz.new(3,3)  
	    @p2 = Matriz.new(3,3)
	    @p3 = @p1 + @p2
	    @p4 = @p1 - @p2
	    @p5 = @p1 * @p2
	    @elem = @p1[2][2]
	end

      describe "Creación" do
	
	  it "Comprobación de creación de matrices" do
	    @p1.is_a? Array
	    @p2.is_a? Array
	    @p3.is_a? Array
	    @p4.is_a? Array
	  end
	  
	  it "Comprobación existencia filas y columnas" do
	    @p1.filas.should_not be_nil 
	    @p1.columnas.should_not be_nil 
	    @p2.filas.should_not be_nil 
	    @p2.columnas.should_not be_nil 
	  end
	  
	  it "Comprobación de creación y acceso a las variables" do 
	    @p1[0][0].should_not be_nil
	    @p1[0][1].should_not be_nil
	    @p1[0][2].should_not be_nil
	    @p1[1][0].is_a? Integer
	    @p1[1][1].is_a? Integer
	    @p1[1][2].is_a? Integer
	    @p1[2][0].is_a? Integer
	    @p1[2][1].is_a? Integer
	    @p1[2][2].should eq(@elem)
	  end
	  
      end

      describe "Operaciones" do	

	 it "La suma da los enteros correctos" do
	  for i in 0...3
	    for j in 0...3
	      @p3[i][j].is_a? Integer
	      @p3[i][j].should eq((@p1[i][j])+(@p2[i][j]))
	    end
	  end	  
	 end
	
	 it "La resta da los enteros correctos" do
	  for i in 0...3
	    for j in 0...3
	      @p4[i][j].is_a? Integer
	      @p4[i][j].should eq((@p1[i][j])-(@p2[i][j]))
	    end
	  end	  
	end
	
	it "La multiplicación da los enteros correctos"
	  for i in 0...3
	    for j in 0...3
	      @p5[i][j].is_a? Integer
	      # @p5[i][j].should eq((@p1[i][j])-(@p2[i][j]))
	    end
	  end	
	end 
	
      end

	  
      end
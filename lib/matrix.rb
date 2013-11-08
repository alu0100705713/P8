# encoding: UTF-8
  class Matriz

    include Comparable
    
    attr_reader :matriz, :filas, :columnas
    
    def initialize(filas, columnas)
      @filas = filas
      @columnas = columnas
      @matriz = Array.new(filas){ Array.new(columnas) }      
    end

    def to_s
      
      for i in 0...@filas
	puts "#{@matriz[i]}"
      end
      
    end
    
    def filas
      return @filas
    end
  
    def columnas
      return @columnas
    end
  
      def [](filas, columnas = nil)
		  if(columnas.nil?)
                        @matriz[filas]
		  else
                        @matriz[filas][columnas]
		  end
	  end      
    
    def +(other)
  
      if((@filas == other.filas) && (@columnas == other.columnas))
	resultado = Matriz.new(@filas, @columnas)
	  for i in 0...@filas
	    for j in 0...@columnas
	      resultado[i][j] = self[i][j] + other[i][j]
	    end
	  end
      else
	puts "Las matrices no tienen el mismo número de filas y columnas, no se puede sumar"
      end
      return resultado
    end

    def -(other)
  
      if((@filas == other.filas) && (@columnas == other.columnas))
	resultado = Matriz.new(@filas, @columnas)
	  for i in 0...@filas
	    for j in 0...@columnas
	      resultado[i][j] = self[i][j] - other[i][j]
	    end
	  end
      else
	puts "Las matrices no tienen el mismo número de filas y columnas, no se puede restar"
      end
      return resultado
    end

    def *(other)
        resultado = Matriz.new(2, 2)
	
	for i in (0...2)
	  for j in (0...2)
	      resultado[i][j] = (self[i][j])*(other[i][j])
	    for k in (1...2)
	      resultado[i][j] = resultado[i][j] + (self[i][k])*(other[k][j])
	    end
	  end
	end
      return resultado
    end
	
    def ==(other)
      for i in 0...@filas
	for j in 0...@columnas    
	  if(self[i][j] != other[i][j])
	    return false
	  end
	    end
	  end
	  return true
  end
  end
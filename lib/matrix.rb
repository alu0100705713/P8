  class Matriz
    include Comparable
    attr_reader :matriz, :filas, :columnas
    
    def initialize(filas, columnas)
      @filas = filas
      @columnas = columnas
      @matriz = Array.new(filas)
    end
  
    def filas
      @filas
    end
  
    def columnas
      @columnas
    end
  
    def +(other)
  
      if((@rows == other.rows) && (@columns == other.columns))
	result = Matriz.new(filas, columnas)
  
	for i in (0...filas)
	  for j in (0...columnas)
	    result[i][j] = self[i][j] + other[i][j]
	  end
	end
      end
    end
  
    def -(other)
  
      if((@rows == other.rows) && (@columns == other.columns))
	result = Matriz.new(filas, columnas)
  
	for i in (0...filas)
	  for j in (0...columnas)
	    result[i][j] = self[i][j] + other[i][j]
	  end
	end
  
      end
    end
  
    def *(other)
  
  
    end
  
    def /(other)
  
  
    end
  
    def to_s
  
    end
  
    
  
  end
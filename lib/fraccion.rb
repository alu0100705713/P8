# encoding: UTF-8
def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0
    u, v = v, u % v
  end
  u
end


class Fraccion
  attr_reader :n, :d
  include Comparable
  def initialize(n,d)
    @n = n/gcd(n,d)
    @d = d/gcd(n,d)
    
  end
  
  def num() #Devuelve el numerador
    #puts @n
    return @n
  end
  
  def denom() #Devuelve el denominador
    #puts @d
    return @d
  end
  
  def to_s #Devuelve una cadena string con la fracción minimizada
    #puts "#{@n}/#{@d}"
    "#{@n}/#{@d}"
  end
  
  def float #Devuelve el resultado en formato flotante
    #puts @n.to_f/@d.to_f
    return (@n.to_f/@d.to_f)
  end
  
  def ==(other) #Permite saber si dos fracciones son iguales
    if @n == other.n and @d == other.d
        #puts "true"
        return true
    else
        #puts "false"
        return false
    end
  end
  
  def abs #Devuelve la fracción en su valor absoluto
    Fraccion.new(@n.abs,@d.abs).to_s
  end
  
  def reciproco #devuelve la fracción de forma recíproca, esto es, a/b => b/a
    nn = @d
    dd = @n
          Fraccion.new(@d, @n).to_s
  end
  
  def -@ #devuelve el negativo de la fracción
    Fraccion.new(-@n, @d)
  end
  
  def +(other) #Suma 2 fracciones
    Fraccion.new(@n+other.n, @d).to_s
  end
        
  def -(other)#Resta 2 fracciones
    Fraccion.new(@n-other.n, @d).to_s       
  end
  
  def *(other)#Multiplica 2 fracciones
    Fraccion.new(@n*other.n, @d*other.d)
  end
  
  def /(other) #Divide 2 fracciones
    Fraccion.new(@n*other.d, @d*other.n).to_s
  end
  
  def %(other)
    return (@n*other.d) % (@d*other.n)
  end
  
  def <=>(other)
    if ((@n == other.num) && (@d == other.denom))
      return 0
    end
    if ((@n * other.denom) < (@d * other.num))
      return -1
    end
    if ((@n * other.denom) > (@d * other.num))
      return 1
    end
  end

end
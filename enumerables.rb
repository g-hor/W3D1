class Array

  def my_each(&prc)
    i = 0

    while i < self.length
      self[i] = prc.call(self[i])
      i += 1
    end

    self
  end

  def my_select(&prc)
    final_array = []
    self.my_each do |ele| 
      if prc.call(ele) == true
        final_array << ele
      end
    end
    final_array
  end

  def my_reject(&prc)
    final_array = []
    self.my_each do |ele| 
      if prc.call(ele) == false
        final_array << ele
      end
    end
    final_array
  end

  def my_all?(&prc)
   
    self.my_each{|ele| return false if !prc.call(ele)}

    return true 
    

  end

  def my_any?(&prc)
    self.my_each{|ele| return true if prc.call(ele)}

    return false
    
  end

  def my_flatten
    return[self] if 
  end






end
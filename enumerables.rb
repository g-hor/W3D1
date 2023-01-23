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
    # final_array = []
    return self if !self.is_a?(Array)
    final_array = []

    self.each do |ele|
      # final_array += ele.my_flatten if ele.is_a?(Array)
      # final_array << ele if ele.is_a?(Integer)
      if ele.is_a?(Array)
        final_array += ele.my_flatten
      else
        final_array << ele
      end
    end
    final_array
  end







end
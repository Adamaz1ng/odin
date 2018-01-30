def ceasar(string, shift)
  a_char = "a".ord
  a_char_upper = "A".ord
  string = string.split("")
  ceasar_store = []
  string.each do |str|
    if str.match(/[A-Za-z]/)
      if str.downcase == str
        str = str.ord.to_i - a_char
        str = ((str + shift) % 26) + a_char
        str = str.chr
      else
        str = str.ord.to_i - a_char_upper
        str = ((str + shift) % 26) + a_char_upper
        str = str.chr
      end
    end
    ceasar_store << str
  end
  return ceasar_store.join("")
end

puts ceasar("Nkrru Cuxrj, Se tgsk oy Gjgs!", -6)

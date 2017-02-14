def dummy_encrypt(string)
  string.reverse.swapcase.gsub(/[aeio]/,"*")
end
def max_letter_frequency_per_word(sentence)
    array = words_longer_than(sentence.split, 3)
    numberletters = letter_per_word(array,"e")
    moreletters = numbers_larger_than(numberletters)
end

def words_longer_than(array,num)
  array.select{|word| word.length > num}
end

def letter_per_word(array,letter)
  array.map{ |w| w.count(letter) }
end

def numbers_larger_than(num_array)
  num_array.max
end


puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5
gets()
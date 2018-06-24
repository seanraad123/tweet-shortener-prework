# Write your code here.

def dictionary(word)
  new_list = []
  substitutions = {"hello" => "hi",
                  "to" => "2",
                  "two" => "2",
                  "too" => "2",
                  "for" => "four",
                  "be" => "b",
                  "you" => "u",
                  "at" => "@",
                  "and" => "&"}
  sub_keys = substitutions.keys



  sub_keys.each do |key|
    word.map! { |x| x == key ? substitutions[key] : x }.flatten!
  end
  print word.join(" ")
end

def word_substituter(string)
  a = string.split.each_slice(1).map{|a|a.join ' '}
  dictionary(a)

end


string = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"


word_substituter(string)

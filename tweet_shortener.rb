# Write your code here.

string = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

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
  puts word.join(" ")
end

def word_substituter(string)
  a = string.split.each_slice(1).map{|a|a.join ' '}
  dictionary(a)
end

word_substituter(string)

def bulk_tweet_shortener(string)
  puts dictionary(string)
end

bulk_tweet_shortener(string)

# Write your code here.

string = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!", "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.", "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!", "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"]

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
  return word.join(" ")
end

def word_substituter(string)
  a = string.split.each_slice(1).map{|a|a.join ' '}
  dictionary(a)
end



def bulk_tweet_shortener(string)
  string.each do |x|
    print string
  end
  #puts word_substituter(string)
end

bulk_tweet_shortener(string)

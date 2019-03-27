require 'pry'
# Write your code here.
def dictionary
 {
   "hello" => "hi",
   "to, two, too" => "2",
   "for, four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
 }

end

def word_substituter(tweet)
  array = tweet.split(" ")

    array.collect do |word|
      if word == dictionary.keys
        word = dictionary[word]
      end
    end
  array.join(" ")
end

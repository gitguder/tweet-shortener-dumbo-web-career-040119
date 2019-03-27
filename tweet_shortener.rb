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
  array = tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  array.join(" ")
end

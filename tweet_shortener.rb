
# Write your code here.
def dictionary
 {
   "hello" => "hi",
   "too" => "2",
   "to" => "2",
   "two" => "2",
   "four" => "4",
   "for" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
 }
end

def word_substituter(tweet)
  tweet.split.collect {|word| dictionary.keys.include?(word.downcase) ? word = dictionary[word.downcase] : word}.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener

end

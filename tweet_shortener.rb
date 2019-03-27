
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
  array = tweet.split
  array.collect do |word|
    if word == dictionary.keys
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

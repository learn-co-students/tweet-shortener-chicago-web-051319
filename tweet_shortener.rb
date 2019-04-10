# Write your code here.
# Write your code here.
require 'pry'
def dictionary
  dict = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "For" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"
  }
end

def word_substituter(tweet)
  diction = /\b(#{Regexp.union(dictionary.keys).source})\b/
  tweet.split.map { |word| word.sub(diction, dictionary) }.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweets)
  tweets.length > 140 ? word_substituter(tweets) : tweets
end

def shortened_tweet_truncator(tweets)
  if tweets.length > 140
    abrv = word_substituter(tweets)
    abrv.length > 140 ? abrv[0...140] : abrv
  else
    tweets
  end
end



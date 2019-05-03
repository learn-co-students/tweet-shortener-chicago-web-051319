def subs
    subs = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2', 
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&",
  }
end 

def word_substituter(tweet)
  newTweet = tweet.clone
  newTweet.split.map { |word|
    if subs.keys.include?(word.downcase)
      word = subs[word.downcase]
    else
      word
    end
  }.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each{|tweet| 
  puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet) 
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    return tweet
  end
  
  newTweet = ''
  i = 0
  while i < 140
    newTweet += tweet[i]
    i += 1
  end
  newTweet
end
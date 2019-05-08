def dictionary
dictionary = {"too" => "2", "to" => "2", "two" =>"2", "four" => "4", "for" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(string)
  string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |words|
    puts word_substituter(words)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end


def shortened_tweet_truncator(tweet_three)
  if word_substituter(tweet_three).length > 140
    word_substituter(tweet_three)[0..136] + '...'
  else
    tweet_three
  end
end

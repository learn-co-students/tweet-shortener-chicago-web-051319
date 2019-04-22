# Write your code here.
def dictionary
  words = {
    "hello" => "hi",
    "two" => "2",
    "to" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  
  return words
end

def word_substituter(tweet)
  nt = tweet.split(" ")
  
  index = 0
  nt.each do |i|
    if dictionary.include?(i)
     # puts "REPLACE #{i}"
      dictionary.each do |word, replacement|
        if i == word
      #    puts "#{i} should be replaced with #{replacement}"
            nt[index] = replacement
          next
        end
      end
    end
    
    index += 1
  end
    
  tweet = ""
  index = 0
  nt.each do |i|
    index += 1
    tweet += "#{i}"
    if index != nt.length
      tweet += " "
    end
  end
  
  return tweet
end

def bulk_tweet_shortener(tweet)
  tweet.each do |i|
    n = word_substituter(i)
    puts n
  end
end

def selective_tweet_shortener(tweet)
  n = tweet.length
  if n > 140
    word_substituter(tweet)
  elsif n < 130
    return tweet
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  nt = word_substituter(tweet)
  tl = nt.length
  puts tl
  if tl > 140
    puts "Trunicate this one: #{nt} (#{tl})"
    tweet = "#{tweet[0..139]}"
  else
    return tweet
  end
  
  return tweet
end


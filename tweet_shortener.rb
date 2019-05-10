# Write your code here.
def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four"=> "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
}
end



def word_substituter(str)
  arr = str.split
  final = []

  arr.collect do |word|
    if dictionary.keys.include? (word.downcase)
      word = dictionary[word.downcase]
      final.push word
    else
      final.push word
    end
  end
  final.join(" ")
end


def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener
end

def shortened_tweet_truncator
end

def dictionary
  convert = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(tweet)
  #convert tweet into an array
  new_tweet = []
  tweet.split(" ").each do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      new_tweet << word
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    word_substituter(tweet)
    if tweet.size >140
      tweet.truncate(140)
      #tweet.slice(0, 140)
    end
  else 
    tweet
  end
end
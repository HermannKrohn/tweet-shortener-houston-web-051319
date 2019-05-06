# Write your code here.

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(inputString)
  finalArr = []
  inputStringArr = inputString.split(" ")
  hash = dictionary
  keys = hash.keys
  inputStringArr.each do |word|
    keys.each do |key|
      if word == key
        word = hash[key]
      end
    end
    finalArr << word
  end
  finalArr.map {|i| i.to_s}.join(" ")
end

def bulk_tweet_shortener(tweetsArr)
  tweetsArr.each do |tweet|
    puts word_substituter(tweet)
  end
end
  
def selective_tweet_shortener(tweet)
  tweet.length>140? word_substituter(tweet) : tweet
end
  
def shortened_tweet_truncator(tweet)
  tweetWithSubs = selective_tweet_shortener(tweet)
  if(tweetWithSubs.length>140)
    return (tweetWithSubs[0..136]+"...")
  else
    tweetWithSubs
  end
end
  
  
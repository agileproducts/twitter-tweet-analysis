require 'rspec'
require './tweetfetcher.rb'


describe Tweetfetcher do
    
  it "should have access to the twitter consumer key" do
    expect(ENV['TWITTER_CONSUMER_KEY']).to be_a(String)
  end

  it "should have access to the twitter consumer secret" do
    expect(ENV['TWITTER_CONSUMER_SECRET']).to be_a(String)
  end

  it "should have access to the twitter access token" do
    expect(ENV['TWITTER_ACCESS_TOKEN']).to be_a(String)
  end

  it "should have access to the twitter access token secret" do
    expect(ENV['TWITTER_ACCESS_TOKEN_SECRET']).to be_a(String)
  end

  let(:tf) { Class.new { extend Tweetfetcher} }
  it "should test bob" do
    bob = tf.twitter_auth_details
    expect(bob).to eql("bob")
  end

end

  

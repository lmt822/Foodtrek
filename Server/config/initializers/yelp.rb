Yelp.client.configure do |config|
  config.consumer_key = 		'Le9kZlU7pEsjODqyhXr4qw'
  config.consumer_secret = 		'rZRS9_RiVXgtCRm0qnDVHw011bA'
  config.token = 				'KmVWTuKJmP-BmBKgujyv1SSuscKOz3Yb'
  config.token_secret = 		'duCZAPvv7u2EBfAFb5wT1O4yqFI'
end

Yelp.client.search('Boston', { term: 'food' })
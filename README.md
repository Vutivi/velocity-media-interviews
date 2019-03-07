# velocity-media-interviews question 5

# Answer

resources :auctions do
 resources :bids do
  match :retract, via: [:get, :post], on: :member
 end
end

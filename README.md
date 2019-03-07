# velocity-media-interviews question 5

# Answer

resources :auctions do
 &nbsp;&nbsp;&nbsp;resources :bids do
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;match :retract, via: [:get, :post], on: :member
 &nbsp;&nbsp;&nbsp;end
end

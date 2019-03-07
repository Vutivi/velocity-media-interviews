# velocity-media-interviews question 5

# Answer

resources :auctions do<br />
 &nbsp;&nbsp;&nbsp;resources :bids do<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;match :retract, via: [:get, :post], on: :member<br />
 &nbsp;&nbsp;&nbsp;end<br />
end

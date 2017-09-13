def sign_in_and_play
  visit('/')
  fill_in :name1, with: 'James'
  fill_in :player1hitpoints, with: 100
  fill_in :name2, with: 'Rory'
  fill_in :player2hitpoints, with: 100
  click_button 'Submit'
end

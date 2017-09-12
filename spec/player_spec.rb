RSpec.describe Player do


#   As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names and seeing them

subject(:player) {Player.new}

 it 'Creates a player and can recall a name' do
   expect(player.name).to eq 'Rory'
 end


end

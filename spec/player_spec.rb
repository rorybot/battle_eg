

RSpec.describe Player do

subject(:player) { described_class.new ('Gregory') }

 # it 'player receives a name' do
 #   battle = Battle.new
 #   battle.assign_player1_name('Rory')
 #  #  assign variable name1 in battle to name Rory
 #  #  access variable from battle that is name1
 #   expect(player.name).to eq 'Rory'
 # end


  feature 'Enter names' do
    scenario 'assigns player name to Player class' do
      expect(player.name).to eq 'Gregory'
    end
  end

end

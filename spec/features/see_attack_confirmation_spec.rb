feature 'Attack player' do
  scenario 'when attacking, see confirmation' do
    p $player2.starting_points
    p 'before assignment'
    attack_player2_for_10_points
    p 'after attacks'
    p $player2.starting_points
    expect(page).to have_content 'WHAMMO! Example opponent has attacked Rory The Barbarian! （・□・；）'
    p $player2.starting_points
  end

  scenario 'when attacking, see hitpoint reduction' do
    attack_player2_for_10_points
    expect(page).to have_content 'Hitpoints reduced by 10'

  end

  scenario 'when attacking, see new hitpoints' do
    attack_player2_for_10_points
    expect(page).to have_content 'Player 2 now has 90 Hitpoints.'
  end

end

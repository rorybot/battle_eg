feature 'Attack player' do
  scenario 'when attacking, see confirmation' do
    sign_in_and_play
    click_link(value='Attack Player 2')
    expect(page).to have_content 'WHAMMO! Example opponent has attacked Rory The Barbarian! （・□・；）'
  end

  scenario 'when attacking, see hitpoint reduction' do
    sign_in_and_play
    click_link(value='Attack Player 2')
    expect(page).to have_content 'Hitpoints reduced to 50'
  end


end

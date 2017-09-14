feature 'See Hit Points' do
  scenario 'see hp' do
    sign_in_and_play
    click_link(value='Attack Player 2')
    visit ('/attack_confirmation')
    expect(page).to have_content 'WHAMMO! Example opponent has attacked Rory The Barbarian! （・□・；）'
  end
end

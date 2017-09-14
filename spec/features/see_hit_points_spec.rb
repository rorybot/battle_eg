feature 'See Hit Points' do
  scenario 'see hp' do
    sign_in_and_play
    expect(page).to have_content 'Example opponent: 100HP'
  end
end

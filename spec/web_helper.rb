def sign_in
  User.create(email: 'example@example.com', password: 'qwertytest')
  visit '/users/sign_in'
  fill_in 'Email', with: 'example@example.com'
  fill_in 'Password', with: 'qwertytest'
  click_button 'Log in'
end

def leave_review(thoughts, rating)
  visit '/restaurants'
  click_link 'Review KFC'
  fill_in 'Thoughts', with: thoughts
  select rating, from: 'Rating'
  click_button 'Leave Review'
end

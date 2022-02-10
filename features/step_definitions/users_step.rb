# Given /the following movies exist/ do |movies_table|
#   movies_table.hashes.each do |movie|
#     Movie.create movie
#   end
# end
require 'digest'
Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    User.create user
  end
end

Then /^a user with the name "(.+)" with a password "(.+)" exists$/ do |username, password|
  expect(User.find_by(:username => username).username).to eq(username)
  expect(User.find_by(:username => username).password_hash).to eq(Digest::SHA256.hexdigest password)
  current_path.should == path_to('homepage')
end

Then /^a user with the name "(.*)" with a password "(.*)" should not exist$/ do |username, password|
  begin
    User.find_by(:username => username).username
  rescue NoMethodError
    page.should have_content('Invalid Username or Password (Both must be at least 8 characters long)')
  end
  
  begin
    User.find_by(:username => username).password
  rescue NoMethodError
    page.should have_content('Invalid Username or Password (Both must be at least 8 characters long)')
  end
end

Then /^I should not be logged in$/ do
  page.should have_content('Incorrect Username or Password')
end

Then /^(?:|I )should be on the (.+)$/ do |page_name|
  visit path_to(page_name)
end

# Then /^I should see reviews that exist$/ do
  

# Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
#   #  ensure that that e1 occurs before e2.
#   #  page.body is the entire content of the page as a string.
#   expect(page.body.index(e1) < page.body.index(e2))
# end

# When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
#   rating_list.split(', ').each do |rating|
#     step %{I #{uncheck.nil? ? '' : 'un'}check "ratings_#{rating}"}
#   end
# end

# Then /I should see all the movies/ do
#   # Make sure that all the movies in the app are visible in the table
#   Movie.all.each do |movie|
#     step %{I should see "#{movie.title}"}
#   end
# end
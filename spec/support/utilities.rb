include ApplicationHelper

def sign_in(user, options={})
	if options[:no_capybara]
		# Sign in when not using Capybara.
		remember_token = User.new_remember_token
		cookies[:remember_token] = remember_token
		user.update_attribute(:remember_token, User.digest(remember_token))
	else
		visit signin_path
		fill_in "email",    with: user.email
		fill_in "password", with: user.password
		first(".page-sign-in").click_button("Sign in")
	end
end

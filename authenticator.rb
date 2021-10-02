user = [
		{username: "Ayush",password: "Password1"},
		{username: "Ayushi",password: "Password2"},
		{username: "Aayush",password: "Password3"},
		{username: "Ishu",password: "Password4"},
		{username: "Krishna",password: "Password5"}]

def auth_user(username, password, list_of_user)
	list_of_user.each do |user_record| 
	  if user_record[:username] == username && user_record[:password] == password
		return user_record
	  end
	end 
	"Credential is not correct"
end
puts "Wel-Come to Authenticator "
25.times {print "-"}
puts

attempts = 1
while attempts < 4
	puts "Enter Username:- "
	username = gets.chomp
	puts "Enter Password "
	password = gets.chomp
	authenticator =  auth_user(username, password, user)
	puts authenticator
	puts "Press n to Exit and Press other key to Continue "
	input = gets.chomp.downcase()
	break if input == "n"
	attempts += 1
end	
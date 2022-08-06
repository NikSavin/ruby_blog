namespace :fill_test_data do
  desc 'fill tables of blog development test data'
  task run: :environment do
  	# Создаем пользователя
  	user = User.create! name: 'test_user', email: 'test@mail.ru'
  	# Создаем пост
  	post = Post.create! title: 'test_post', body: 'test_rake_body', user: user
  	# Создаем комментарий
  	comment = Comment.create! body: 'test_comment', user: user, post: post
  	# Задаем оценку
  	Mark.create! value: 3, user: user, post: post
  end
end
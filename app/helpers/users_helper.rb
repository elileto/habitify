module UsersHelper
    def setup_user(user)
      user.profile ||= Profile.create
      user.todo ||= Todo.create
      user.daily ||= Daily.create
      user
    end
end

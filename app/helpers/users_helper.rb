module UsersHelper
        def setup_user(user)
          user.profile ||= Profile.create
          user
        end
end

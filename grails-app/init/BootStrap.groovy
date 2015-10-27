import cat.udl.emovix.core.User
import cat.udl.emovix.core.Role
import cat.udl.emovix.core.UserRole

class BootStrap {

    def init = { servletContext ->
      def adminRole = new Role(authority: "ROLE_ADMIN").save()
      def userRole = new Role(authority: "ROLE_USER").save()

      def adminUser = new User(username: "admin", password: "admin1").save()
      def testUser = new User(username: "test", password: "test1").save()

      UserRole.create adminUser, adminRole, true
      UserRole.create testUser, userRole, true

    }
    def destroy = {
    }
}

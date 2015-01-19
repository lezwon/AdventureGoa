package adventuregoa

import com.adventuregoa.User
import grails.transaction.Transactional

@Transactional
class AdminCheckService {

    def static check(User user) {
        user.authorities.any{
            return it.authority == "ROLE_ADMIN"
        }
    }
}

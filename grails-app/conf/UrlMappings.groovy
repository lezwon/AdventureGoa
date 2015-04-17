class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/index")
        "500"(view: '/error')
        "/home"(controller: "package", action: "display")
        "/auth/login"(controller: "home", action: "index")

        "/$username/home" {
            controller= "home"
            action= "home"
            constraints {
                username(validator: { !['admin'].contains(it) })
            }
        }

        "/packages"(controller: "package", action: "display")
        "/hotels"(controller: "hotel", action: "display")
        "/sports"(controller: "adventureActivity", action: "display")
        "/book"(controller: "booking", action: "book")
        "/checkout"(controller: "booking", action: "save")

    }
}

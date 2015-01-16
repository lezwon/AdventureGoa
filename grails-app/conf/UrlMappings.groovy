class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/index")
        "500"(view: '/error')
        "/home"(controller: "home", action: "index")
        "/$username/home"(controller: "home", action: "home")
    }
}

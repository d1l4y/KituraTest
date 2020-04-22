import Kitura
import HeliumLogger
import LoggerAPI

let logger = HeliumLogger(.verbose)
Log.logger = logger

func rootHandler(request: RouterRequest, response: RouterResponse, next: ()-> ()) {
    response.send("Hello Kitura")
    Log.info("rootHandler")
    next()
}

let router = Router()

Kitura.addHTTPServer(onPort: 8080, with: router)
router.get("/", handler: rootHandler)

router.get("/hello") {
    request, response, next in
    
    response.send("<html>")
    response.send("<body>")
    response.send("<h1> HELLO KITURA </h1>")
    response.send("</body>")

    response.send("</html>")

    Log.debug("HELLO")
    
    next()
}
Kitura.run()

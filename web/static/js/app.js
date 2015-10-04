import {Socket} from "phoenix"
import {Test} from "web/static/js/test"

// let socket = new Socket("/ws")
// socket.connect()
// let chan = socket.chan("topic:subtopic", {})
// chan.join().receive("ok", chan => {
//   console.log("Success!")
// })

var App = {
  foo() {
   let test = new Test();
  }
}

App.foo();

export { App }

export class Test {

  constructor() {
    let rootPathInput = document.querySelector("input#rootPath");
    rootPathInput.addEventListener("change", this.setRoot);

    let commandInput = document.querySelector("input#command");
    commandInput.addEventListener("change", this.setCommand);

    let goButton = document.querySelector("button#goCode");
    goButton.addEventListener("click", this.launch);
    console.log(goButton);
  }

  launch() {
    console.log("I should probably launch the tests now... if I'm valid!");
  }

  setRoot() {
    this.path = document.getElementById('rootPath').value;
    console.log(`heyooo, set the root to ${this.path}`);
  }

  setCommand() {
    this.command = document.getElementById('command').value;
    console.log(`zup, i changed the command to ${this.command}`);
  }
}

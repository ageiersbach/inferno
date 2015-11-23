export var Note = {
  run() {
    let id = document.querySelector('.note-id');
    let body = document.querySelector('.note-body');
    let title = document.querySelector('.note-title');

    editable(body);
    editable(title);

    function editable(element) {
      element.contentEditable = true;
      element.addEventListener('blur', doTheThing, false);
    }

    function doTheThing() {
      let note = { note: { title: title.innerHTML, body: body.innerHTML }};
      console.log('save called, does nothing', JSON.stringify(note));
      let xhr = new XMLHttpRequest();
      xhr.open('POST', '/api/notes', true);
      xhr.setRequestHeader("Content-Type", "application/json");
      xhr.send(JSON.stringify(note));
      xhr.onreadystatechange = function() {
        console.log('status?', xhr.status);
      };
    }
  }
};

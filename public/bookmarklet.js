// div = document.createElement('div');
// div.setAttribute('foo', 'bar');
// text = document.createTextNode("This was added using the 'Bookmarklet' & Atom.io?!");
// div.appendChild(text);
// document.body.appendChild(div);
// console.log($.get)
$.get('http://localhost:3000/api/site',{url:location.href})

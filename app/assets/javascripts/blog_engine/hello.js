window.onload = function() {
  console.log("==============");
  console.log("Hello Sprocket");
  console.log("==============");
  document.getElementById("sprocket").querySelectorAll("h1").forEach(function(h1) {
    h1.style.color = "red";
  });
  var h3 = document.createElement("h3");
  h3.innerHTML = "Sprocketで追加したh3";
  document.getElementById("sprocket").appendChild(h3);
};

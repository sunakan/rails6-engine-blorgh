window.addEventListener("load", () => {
  console.log("===============")
  console.log("Hello Webpacker")
  console.log("===============")
  document.getElementById("webpack").querySelectorAll("h1").forEach((h1) => {
    h1.style.color = "orange";
  })
  var h3 = document.createElement("h3")
  h3.innerHTML = "Webpackで追加したh3"
  document.getElementById("webpack").appendChild(h3)
})

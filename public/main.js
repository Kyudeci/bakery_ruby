let codeA = document.getElementById("secret");
let submit = document.getElementById("submit");
let imgUnlock = document.getElementById("unlock");
let titleUnlock = document.getElementById("unlock-title");
let textUnlock = document.getElementById("unlock-text");
let btnUnlock = document.getElementById("unlock-btn");
let btnUnlock2 = document.getElementById("unlock-btn2");
let invalid = document.getElementById("invalid");

function search() {
  if (codeA.value == "cheesecake") {
    alert("You've unlocked something!");
    imgUnlock.src = "Padlock-open.png";
    titleUnlock.innerHTML = "It Appears to Have Opened!";
    textUnlock.innerHTML = "You figured out the secret code! Don't share it or do share it if you want to! Click to reveal the new option...";
    // *Note: I don't have cookies on this site so this will lock on refresh!
    codeA.value = "";
    btnUnlock2.style.display = "inline-block";
    invalid.innerHTML = "";
  } else {
    invalid.innerHTML = "Invalid Code!";
    codeA.value = "";
  }
}
function unknown() {
  imgUnlock.src = "http://assets.kraftfoods.com/recipe_images/opendeploy/52544_640x428.jpg";
  titleUnlock.innerHTML = "The One, The Only, Cheesecake!";
  textUnlock.innerHTML = "Wonderful, Beautiful, Magnificent, Cheesecake-y goodness.";
  btnUnlock.style.display = "inline-block";
  btnUnlock2.parentNode.removeChild(btnUnlock2);
}
submit.addEventListener("click", search);
btnUnlock2.addEventListener("click", unknown);
codeA.addEventListener("keyup", function(event) {
  if (event.keyCode === 13) {
    document.getElementById("submit").click();
  }
});

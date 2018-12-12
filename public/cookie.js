let suggest = document.getElementById("suggest");//input
let submit2 = document.getElementById("submit2");//submit button

function order() {
  let para = document.createElement("p");//paragraph element
  let orderBox = document.getElementById("display");// container for new paragraph tag
  let code = document.createTextNode(suggest.value);// input value
  orderBox.appendChild(para);
  para.appendChild(code);
  para.classList.add("typewriter");
  suggest.value = "";
}
// submit2.addEventListener("click", order);
// suggest.addEventListener("keyup", function(event) {
//   if (event.keyCode === 13) {
//     document.getElementById("submit2").click();
//   }
// });
//Rework into OOP-- in essence create a class
class Cookie {
  constructor(type, icing, amount) {
    this.type = type; //string
    this.icing = icing; //boolean
    this.amount = amount; //integer
  }
  price() {
    this.price = 1.00
    this.add = 0
    this.total = this.amount * this.price
    if (this.icing == true) {
      this.add += 0.50
    } else {
      this.add += 0
    }
    this.total += this.add
    console.log(this.total);
    }
}
//Question: can this information be output to google sheets?
let cookie1 = new Cookie("chocolate", false, 3);
let cookie2 = new Cookie("chocolate", true, 3);

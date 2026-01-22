const addItem = document.querySelectorAll(".addItem");
const ordercart = document.querySelector(".order");
const clearcart = document.querySelector(".clear");
const addedItems = document.getElementById("items-added");
const orderItems = document.querySelector(".cart");
updateCounter();
renderCartTable();
updateOrderSum();
function updateCounter() {
  const cart = getCart();
  const total = cart.reduce((sum, item) => sum + item.ilosc, 0);
  addedItems.innerHTML = "Ilość przedmiotów w koszyku: " + total;
}

function getCart() {
  return JSON.parse(localStorage.getItem("cart")) || [];
}
function saveCart(cart) {
  localStorage.setItem("cart", JSON.stringify(cart));
}

function addToCart(product) {
  let cart = getCart();

  const existing = cart.find(p => p.id === product.id);

  if (existing) {
    existing.ilosc++;
  } else {
    cart.push({
      id: product.id,
      nazwa: product.nazwa,
      cena: product.cena,
      ilosc: 1
    });
  }

  saveCart(cart);
updateCounter();
renderCartTable();
updateOrderSum();
}
//wyglada jakbym wiedzial co robie, a nie wiem XDDD
document.addEventListener("DOMContentLoaded", () => {
const category = document.body.dataset.category;
    fetch(`get_data.php?kategoria=${category}`)
    .then(res => res.json())
    .then(data => {
      const items = document.querySelectorAll(".item");

      items.forEach((item, index) => {
        if (data[index]) {
          item.dataset.id = data[index].id;
          item.dataset.nazwa = data[index].nazwa;
          item.dataset.cena = data[index].cena;
        const img = item.querySelector(".product-img");
        img.src = data[index].obrazek;
        img.alt = data[index].nazwa;
        const h2 = document.createElement("h2");
        h2.textContent = data[index].nazwa; 

        const button = item.querySelector(".addItem");
        item.insertBefore(h2, button);
        }
      });
      items.forEach((item, index) => {
        if (data[index]) {
        const p = document.createElement("p");
        p.textContent = data[index].opis;

        const button = item.querySelector(".addItem");
        item.insertBefore(p, button);
        }
      });
      items.forEach((item, index) => {
        if (data[index]) {
        const cena = document.createElement("h3");
        cena.textContent = data[index].cena + "zł";

        const button = item.querySelector(".addItem");
        item.insertBefore(cena, button);
        }
      });
    });
});

    
addItem.forEach(button => {
  button.addEventListener("click", () => {
    const item = button.closest(".item");

    const product = {
      id: parseInt(item.dataset.id),
      nazwa: item.dataset.nazwa,
      cena: parseFloat(item.dataset.cena)
    };

    const cart = getCart();


    addToCart(product);
    updateCounter();
    renderCartTable();
    updateOrderSum();
  });
});

function renderCartTable() {
  const tbody = document.querySelector("#tabelka tbody");
  if (!tbody) return; 

  const cart = getCart(); 
  tbody.innerHTML = "";

  if (cart.length === 0) {
    const tr = document.createElement("tr");
    tr.innerHTML = `<td colspan="4">Koszyk jest pusty</td>`;
    tbody.appendChild(tr);
    return;
  }

  cart.forEach(item => {
    const tr = document.createElement("tr");

    tr.innerHTML = `
      <td>${item.nazwa}</td>
      <td>${item.cena.toFixed(2)} zł</td>
      <td>${item.ilosc}</td>
    `;
    
    tbody.appendChild(tr);
  });
}
function updateOrderSum() {
  const cart = getCart();
  const sum = cart.reduce(
    (total, item) => total + item.cena * item.ilosc,
    0
  );

  const sumBox = document.querySelector("#orderSum strong");
  if (sumBox) {
    sumBox.textContent = sum.toFixed(2) + " zł";
  }
}

clearcart.addEventListener("click", () => {
  document.querySelector(".confirm").style = "display: visible";
  document.querySelector(".disagree").style = "display: visible";
  document.querySelector(".order").style = "display: none";
  document.querySelector(".clear").style = "display: none";
});

ordercart.addEventListener("click", () => {
  document.querySelector(".confirm").style = "display: none";
  document.querySelector(".disagree").style = "display: none";
  document.getElementById("orderForm").style = "display: visible";
  document.querySelector(".cancel").style = "display: visible";
  document.querySelector(".order").style = "display: none";
  document.querySelector(".clear").style = "display: none";
});
//BOŻE NIE MA BŁĘDÓWWW
document.querySelector(".cancel").addEventListener("click", () => {
  document.querySelector(".confirm").style = "display: none";
  document.querySelector(".disagree").style = "display: none";
  document.querySelector(".order").style = "display: visible";
  document.querySelector(".clear").style = "display: visible";
  document.getElementById("orderForm").style = "display: none";
  document.querySelector(".cancel").style = "display: none";
});

document.querySelector(".disagree").addEventListener("click", () => {
  document.querySelector(".confirm").style = "display: none";
  document.querySelector(".disagree").style = "display: none";
  document.querySelector(".order").style = "display: visible";
  document.querySelector(".clear").style = "display: visible";
});

document.querySelector(".confirm").addEventListener("click", () => {
  document.querySelector(".confirm").style = "display: none";
  document.querySelector(".disagree").style = "display: none";
  document.querySelector(".order").style = "display: visible";
  document.querySelector(".clear").style = "display: visible";
  localStorage.removeItem("cart");
  updateCounter();
  renderCartTable();
  updateOrderSum();
  alert("Wyczyszczono koszyk!");
});



orderItems.addEventListener("click", () => {
    document.getElementById("formularz").style = "display: visible";
    document.getElementById("content").style = "display: none";
});

document.getElementById("orderForm").addEventListener("submit", function (e) {
  e.preventDefault();

  const formData = new FormData(this);

  const cart = getCart();
  formData.append("cart", JSON.stringify(cart));

  fetch("send_order.php", {
    method: "POST",
    body: formData
  })
  .then(res => res.text())
  .then(response => {
    alert("Zamówienie zapisane!");
    localStorage.removeItem("cart");
    updateCounter();
    updateOrderSum();
    renderCartTable();
    this.reset();
  })
  .catch(err => {
    console.error(err);
    alert("Błąd zapisu zamówienia");
  });
});

  

renderCartTable();
//mam dość tego piekła wyłączcie mi prąd
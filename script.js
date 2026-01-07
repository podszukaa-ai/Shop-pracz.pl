const addItem = document.querySelectorAll(".addItem");
const addedItems = document.getElementById("items-added");
const orderItems = document.getElementById("order-items");
let itemsAdded = 0;
addItem.forEach(addItem => {
    addItem.addEventListener("click", () => {
        if(itemsAdded >=9){
            alert("Dodano już maksymalną ilość produktów!");
        }else{
        itemsAdded = itemsAdded + 1;
        addedItems.innerHTML = "Ilość przedmiotów w koszyku: " + itemsAdded;
        }
    });}

);
orderItems.addEventListener("click", () => {
    document.getElementById("content").innerHTML = "<div id='formularz'>" + 
    "<p> Prosimy o wypełnienie formularza w celu złożenia zamówienia:" +
    "<form>" + 
    "<br><br><p>Imię: <input type='text'></p>" +
    "<br><p>Nazwisko: <input type='text'></p>" +
    "<br><p>Adres Email: <input type='email'></p>" +
    "<br><p>Telefon: <input type='tel'></p>" +
    "<br><p>Miasto: <input type='text'></p>" +
    "<br><p>Kod pocztowy: <input type='text'></p>" +
    "<br><p>Adres: <input type='text'></p>" +
    "<br><p><input type='submit'></p>" +
    "</form></div>" +
    "<div id='tabelka'>" + 
    "<table>" +
    "<thead>" + 
    "<tr><th>Produkt</th><th>Cena produktu</th></tr>" +
    "</thead>" + 
    "<tbody>" +
    "<tr><td>Produkt</td><td>00.00zł</td><tr>" +
    "<tr><td>Suma:</td><td>00.00zł</td><tr>" +
    "</tbody>" +
    "</table>" +
    "</div>";
});
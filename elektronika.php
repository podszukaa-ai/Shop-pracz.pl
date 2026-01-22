<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop-pracz.pl</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400..900&display=swap" rel="stylesheet">
</head>
<body data-category="elektronika">
   <header>
        <div id="logo-section">
        <a href="index.html"><img src="logoplaceholder.jpg"></a>
        <p>"Pasjonujący slogan zachęcający do zakupu płynu do szyb samochodowych nawet osoby bez auta!"</p>
        </div>
        <div id="basket-section">
            <span id="items-added">Ilość przedmiotów w koszyku: 0 </span>
            <button class="order-items cart">Koszyk</button>
        </div>
   </header>

   <main>
        <section>
            <div id="nav">
                <a href="dom.php"><div class="box-2nd">Dom</div></a>
                <a href="elektronika.php"><div class="box-2nd">Elektornika</div></a>
                <a href="odziez.php"><div class="box-2nd">Odziez</div></a>
                <a href="samohud.php"><div class="box-2nd">Samochód</div></a>
            </div>
        </section>
        <section id="content" style="display: visible">
            <div id="box-of-items">
                <div class="item" data-id="">
                <img class="product-img" src="itemplaceholder.png">
                    <button class="addItem">Dodaj do koszyka</button>
                </div>
                <div class="item" data-id="">
                <img class="product-img" src="itemplaceholder.png">
        
                    <button class="addItem">Dodaj do koszyka</button>
                </div>
                <div class="item" data-id="">
                <img class="product-img" src="itemplaceholder.png">
        
                    <button class="addItem">Dodaj do koszyka</button>
                </div>
                <div class="item" data-id="">
                <img class="product-img" src="itemplaceholder.png">
        
                    <button class="addItem">Dodaj do koszyka</button>
                </div>
        
                <div class="item" data-id="">
                <img class="product-img" src="itemplaceholder.png">
        
                    <button class="addItem">Dodaj do koszyka</button>
                </div>
                
            </div>
        </section>
        <div id="formularz" style = "display:none;">
        <form id="orderForm" style = "display:none;">
        <p>Imię: <input type="text" name="imie" required>
        <p>Nazwisko:<input type="text" name="nazwisko" required>
        <p>Email:<input type="email" name="email" required>
        <p>Telefon:<input type="text" name="telefon">
        <p>Miasto:<input type="text" name="miasto">
        <p>Kod Pocztowy<input type="text" name="kod_pocztowy">
        <p>Adres<input type="text" name="adres">

        <input type="submit" value="Zamów" >
        
        
        </form>
        <button class="order-items cancel" style = "display:none;">Anuluj!</button>
        <div id='tabelka'>
        <table>
        <thead>
        <tr><th>Produkt</th><th>Cena produktu</th><th>Ilość</th></tr>
        </thead>
        <tbody>
        </tbody>
        </table>
        </div>
        <div id="orderSum">
  Suma zamówienia: <strong>0.00 zł</strong>
</div>
        <button class="order-items order">Zamów</button>
        <button class="order-items clear">Wyczyść</button> 
        <button class="order-items confirm" style = "display:none;">Tak!</button>
        <button class="order-items disagree" style = "display:none;">Nie!</button> 
        </div>
   </main>

   <footer>
        &copy; 2025 Projekt Grupowy IB SF,MK,WZ
   </footer>
   <script src="skrypt.js" defer></script>
</body>


</html>
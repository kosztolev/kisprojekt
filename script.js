const form = document.querySelector("form");

form.addEventListener("submit", function(event) {

    const nev = document.querySelector('input[name="nev"]').value;
    const mobil = document.querySelector('input[name="mobil"]').value;
    const email = document.querySelector('input[name="email"]').value;

    const nevRegex = /^[A-Za-zÁÉÍÓÖŐÚÜŰáéíóöőúüű ]+$/;

    const mobilRegex = /^[0-9+\-/# ]+$/;

    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;


    if (!nevRegex.test(nev)) {
        alert("A név csak betűket tartalmazhat!");
        event.preventDefault();
    }

    else if (!mobilRegex.test(mobil)) {
        alert("Hibás telefonszám!");
        event.preventDefault();
    }

    else if (!emailRegex.test(email)) {
        alert("Hibás email cím!");
        event.preventDefault();
    }

});
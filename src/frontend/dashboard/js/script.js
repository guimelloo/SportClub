document.addEventListener("DOMContentLoaded", function () {
    includeHTML("/src/frontend/dashboard/components/sidebar.html", "menu");

});

function includeHTML(file, elementId) {
    fetch(file)
        .then(response => response.text())
        .then(data => document.getElementById(elementId).innerHTML = data)
        .catch(error => console.error("Erro ao carregar " + file, error));
}

//footer

//is it really nedeed? tag "a" alredy redirect right?
function redirectToNewTab() {
    window.open("https://www.instagram.com/noodl3hh/", "Instagram");
    window.open("https://www.tiktok.com/@noodlehh", "Tiktok");
    window.open("https://x.com/jungwvnz", "X");
}
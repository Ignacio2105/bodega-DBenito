document.addEventListener("DOMContentLoaded", function () {
    const eyeIcons = document.querySelectorAll(".view-product"); // Asegúrate de que el selector coincida
    const modal = document.getElementById("product-modal");
    const closeModal = document.querySelector(".close-button");

    eyeIcons.forEach(icon => {
        icon.addEventListener("click", () => {
            const product = JSON.parse(icon.getAttribute('data-product')); // Obtener los datos del producto
            
            // Cargar los datos en el modal
            document.getElementById("modal-product-image").src = product.enlace;
            document.getElementById("modal-product-image").alt = product.nombreproducto;
            document.getElementById("modal-product-name").textContent = product.nombreproducto;

            let priceHtml = '';
            if (product.descuento > 0) {
                const preciodesc = product.precioprodu * (1 - (product.descuento / 100));
                priceHtml += `<span>Ahora: S/${preciodesc.toFixed(2)}</span><span class="price-original">Antes: S/${product.precioprodu}</span>`;
            } else {
                priceHtml += `<span>S/${product.precioprodu}</span>`;
            }
            document.getElementById("modal-product-price").innerHTML = priceHtml;

            let starsHtml = '';
            for (let i = 1; i <= 5; i++) {
                starsHtml += `<i class="${i <= product.calificacion ? 'fa-solid' : 'fa-regular'} fa-star"></i>`;
            }
            document.getElementById("modal-product-rating").innerHTML = starsHtml;

            modal.classList.remove("hidden"); // Mostrar el modal
        });
    });

    closeModal.addEventListener("click", () => {
        modal.classList.add("hidden"); // Cerrar el modal
    });

    // Cerrar el modal al hacer clic fuera de él
    modal.addEventListener("click", (e) => {
        if (e.target === modal) {
            modal.classList.add("hidden");
        }
    });
});

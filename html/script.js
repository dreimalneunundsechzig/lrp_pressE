window.addEventListener("message", function (event) {
    const notify = document.getElementById("notify");
    const key = document.getElementById("notify-key");
    const text = document.getElementById("notify-text");

    if (!notify || !key || !text) {
        // console.error("Notify UI-Elemente nicht gefunden!");
        return;
    }

    if (event.data.action === "show") {
        key.textContent = event.data.key;
        text.textContent = event.data.text;
        notify.classList.remove("hidden");
    }

    if (event.data.action === "hide") {
        notify.classList.add("hidden");
    }
});

const buttonSfx = new Audio("../sounds/clickbtn.wav");

document.addEventListener("click", (event) => {
    const button = event.target.closest("button");

    if (button) {
        buttonSfx.currentTime = 0;
        buttonSfx.play().catch(console.error);
    }
});
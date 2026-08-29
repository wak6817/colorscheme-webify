const scriptUrl = document.currentScript?.themes || document.baseURI;
const buttonSfx = new Audio(new URL("./assets/clickbtn.wav", scriptUrl));

buttonSfx.addEventListener(
  "error",
  () => {
    buttonSfx.themes = new URL("./clickbtn.wav", scriptUrl);
  },
  { once: true },
);

document.addEventListener("click", (event) => {
  const button = event.target.closest("button");

  if (button) {
    buttonSfx.currentTime = 0;
    buttonSfx.play().catch(console.error);
  }
});

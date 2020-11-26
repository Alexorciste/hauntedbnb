
const changeSkullToRed = () => {
const skull = document.querySelector(".fa-skull");
skull.addEventListener("click", (event) => {
    event.currentTarget.classList.toggle("active");
    
});
};

export { changeSkullToRed };
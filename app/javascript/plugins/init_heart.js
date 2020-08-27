const initHeart = () => {
    const heartLinks = document.querySelector(".heart-red > a");
    heartLinks.addEventListener("click", (event) => {
        event.preventDefault();
    });
};

export { initHeart };

const selectBanner = () => {
  const banner = document.querySelector(".home-banner");

  if(banner) {
    document.querySelector(".navbar-grent").style.display = "none";
    document.querySelector(".navbar-lewagon").style.display = "";
  } else {
    document.querySelector(".navbar-grent").style.display = "";
    document.querySelector(".navbar-lewagon").style.display = "none";
  };
};

export { selectBanner };

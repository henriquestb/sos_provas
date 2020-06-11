   const links = document.querySelectorAll(".tab-underlined")
  links.forEach((link) => {
    link.addEventListener("click", function(){
      const active = document.querySelector(".tab-active")
      active.classList.remove('tab-active')
      const paint = document.querySelector(".active")
      paint.classList.remove('active')
      const idSelected = link.dataset.target
      const selected = document.getElementById(idSelected)
      selected.classList.add('tab-active');
      link.classList.add('active')
    });
  });

  const btn = document.querySelector("#show-message")

  btn.addEventListener("click", function(){
    const question = document.querySelector("#useranswer")
    const answer = document.querySelector("#oficialanswer")
    answer.classList.toggle("hidden-text");
    question.classList.toggle("hidden-text");
  });

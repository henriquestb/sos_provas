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

  const btns = document.querySelectorAll(".button-answer")
  btns.forEach((btn) => {
    btn.addEventListener("click", function(){
      const exercise = btn.parentNode;
      const answer = exercise.querySelector(".answer")
      console.log(answer.classList.contains("hidden-text"));
      if (answer.classList.contains("hidden-text")) {
        btn.innerText = "Esconder Resposta";
        answer.classList.add("bounceIn");
        answer.classList.remove("hidden-text");
      } else {
        btn.innerText = "Veja Resposta";
        answer.classList.add("bounceOut");
        setTimeout(() => {
          answer.classList.remove("bounceOut");
          answer.classList.add("hidden-text");
        }, 800);
      }
    });
  });

const nameApparition = () => {
  let nameTag = document.querySelector('h1');
  if (nameTag) {
    window.addEventListener('load', (e) => {
      nameTag.classList.remove('transparent')
      nameTag.classList.add('cancel-transparent')
    })
  }
}

let i = 0;
const typingEffect = () => {
  let workName = "DEVELOPPEUSE WEB FULLSTACK"
  let workTag = document.querySelector('h2')
  let speed = 150;
  if (workTag) {
    if (i < workName.length) {
      workTag.innerHTML += workName.charAt(i);
      i++;
      setTimeout(typingEffect, speed)
    }
  }
}

export { nameApparition };
export { typingEffect };

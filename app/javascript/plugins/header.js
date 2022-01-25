const nameApparition = () => {
  let nameTag = document.querySelector('h1');
  window.addEventListener('load', (e) => {
    nameTag.classList.remove('transparent')
    nameTag.classList.add('cancel-transparent')
  })
}

let i = 0;
const typingEffect = () => {
  let workName = "DEVELOPPEUSE WEB FULLSTACK"
  let speed = 150;
  if (i < workName.length) {
    document.querySelector('h2').innerHTML += workName.charAt(i);
    i++;
    setTimeout(typingEffect, speed)
  }
}

export { nameApparition };
export { typingEffect };

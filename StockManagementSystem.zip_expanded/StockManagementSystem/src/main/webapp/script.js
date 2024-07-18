const root = document.documentElement;

root.addEventListener("mousemove", e => {
  // const center = [
  //   document.body.clientWidth/2,
  //   document.body.clientHeight/2,
  // ]
  
  let windowWidth = document.body.clientWidth;
  let windowHeight = document.body.clientHeight;
  
  let mouseXpercentage = Math.round(e.pageX / windowWidth * 100);
  let mouseYpercentage = Math.round(e.pageY / windowHeight * 100);
    
  if (mouseXpercentage < 50 && mouseYpercentage < 50) {
    var color = 'var(--persian-blue)'
  } else {
    var color = 'var(--persian-blue)'
  }
  
  document.getElementById('shadow').style.setProperty('background', 'radial-gradient(at ' + mouseXpercentage + '% ' + mouseYpercentage + '%, rgba(0,0,0,.2), var(--russian-violet) var(--shadow-percent))')
  
  // root.style.setProperty('--mouse-x', -(e.clientX-center[0])/10 + "%");
  // root.style.setProperty('--mouse-y', -(e.clientY-center[1])/10 + "%");
});

let canvas;
let particles = [];
let inCanvas = false;
let effects = window.localStorage.getItem('effects') !== null
  ? JSON.parse(window.localStorage.getItem('effects'))
  : true

console.log(effects)

if (!effects) {
  ball.style.setProperty("margin-left", "6px")
  toggle.setAttribute("value", "left")
}
// let globalMouseX = 0
// let globalMouseY = 0

// root.addEventListener("mousemove", e => {
//   globalMouseX = e.pageX
//   globalMouseY = e.pageY
// })

root.addEventListener("mouseover", e => {
  inCanvas = true
})

root.addEventListener("mouseout", e => {
  inCanvas = false
})

function setup() {
  canvas = createCanvas(windowWidth, windowHeight);
  // canvas.parent('canvas')
  noStroke();
  smooth();
}

function draw() {
  background('#000000');
  
  // canvas.mouseOver(() => { inCanvas = true })
  // canvas.mouseOut(() => { inCanvas = false })
  
  if (effects) {
    let mouseXpercentage = Math.round(mouseX / windowWidth * 100);
    let mouseYpercentage = Math.round(mouseY / windowHeight * 100);

    if (inCanvas) {
      if (mouseXpercentage < 50 && mouseYpercentage < 50) {
        createParticles([random(100), 255, random(255)])
      } else if (mouseXpercentage > 50 && mouseYpercentage < 50) {
        createParticles([255, random(255), random(100)])
      } else if (mouseXpercentage > 50 && mouseYpercentage > 50) {
        createParticles([255, random(100), random(255)])
      } else if (mouseXpercentage < 50 && mouseYpercentage > 50) {
        createParticles([random(100), random(255), 255])
      }
    }
  }
  
  // console.log(mouseXpercentage, mouseYpercentage)
  
  for (var i = particles.length - 1; i > 0; i--) {
    var p = particles[i];
    if (effects) {
      p.update();
      p.display();

      if (p.isOutside() || p.a <= -10) {
        particles.splice(i, 1);
      }
    } else {
      delete p
    }
  }
}

function createParticles(color) {
  if (frameCount % 2 == 0) {
    particles.push(new Particle(random(10, 45), random(30, 45), color));
    particles.push(new Particle(random(195, 220), random(195, 220), color));
  }
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

class Particle {
  constructor(vx, vy, color) {
    this.vx = vx;
    this.vy = vy;
    this.num = 255;
    this.a = 255;
    this.color = color
    this.loc = createVector(mouseX, mouseY);
    this.vel = createVector(0, 0);
    this.acc = createVector(1, 1);
  }

  update() {
    this.vel.add(this.acc);
    this.loc.add(this.vel);
    this.acc.mult(2);
    this.vel.limit(0.05);
  }

  isOutside() {
    if (this.loc.x < 0 || this.loc.y > width || this.loc.y < 0 || this.loc.y > height) {
      return true;
    }
    return false;
  }

  display() {
    this.acc = createVector(
      sin(radians(this.vx + this.num / 2)) / 2, 
      cos(radians(this.vy - this.num / 2)) / 2
    );
    
    fill(this.color[0], this.color[1], this.color[2], this.a); 
    var r = map(this.a-30, 255, 0, 1, 20);
    ellipse(this.loc.x, this.loc.y, r);

    this.num += map(this.a, 255, 0, 1, 0);
    this.a -= 0.1;
  }
}

document.getElementById("toggle")
  .addEventListener('click', (event) => {
  
  toggle = document.getElementById("toggle")
  ball = document.getElementById("ball")
  
  console.log(effects)
  console.log(toggle.getAttribute("value"))
  
  if ((effects === true) && (toggle.getAttribute("value") == "right")) {
    window.localStorage.setItem('effects', false)
    ball.style.setProperty("margin-left", "6px")
    toggle.setAttribute("value", "left")
    effects = false
  } else {
    window.localStorage.setItem('effects', true)
    ball.style.setProperty("margin-left", "50%")
    toggle.setAttribute("value", "right")
    effects = true
  }
})
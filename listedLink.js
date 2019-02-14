class LinkedList {
  constructor() {
    let cola = 0;
    let cabeza = null;
    let node = { cola: this.cola, cabeza: this.cabeza}
  }

  add(data) {
    const newNode = new Node(data, null);
    if (this.cabeza == null) {
      this.node = newNode;
      return this.node;
    } else {
      let temp = this.node;
      while (temp.cola) {
        temp = this.node.cola;
      }
      this.node.cola++;
      return this.node;
    }
  }

  get(index) {
    const actual = this.node.cola;
    for (let i = 0; i <= index; i++) {
      if (actual = index) return this.node;     
    }
  }
}

class Node {
  constructor(dato, ref) {
    this.dato = dato;
    this.ref = ref;
  }
}

const linkedList = new LinkedList;
linkedList.add('ab');

linkedList.add('alpha');
console.log(linkedList);
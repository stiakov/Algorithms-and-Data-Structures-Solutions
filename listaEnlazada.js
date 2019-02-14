class Node {
    constructor(data, next) {
        this.data = data;
        this.next = next;
    };
};

class LinkedList {
    constructor() {
        this.head = null;
        this.tail = 0;
    };

    add(data) {
        const newNode = new Node(data);
        if (!this.head) {
            this.head = newNode;
        } else {
            let current = newNode;
            while (current.next) {
                current = current.next;
            };
            current.next = newNode;
        };  
        this.tail++;
    };

    get(index) {
        for (let i = 0; i <= index; i++) {
            if (this.tail === index) {
                
                return this.head;
            }
            
        }
    }
};
const linkedList = new LinkedList;
linkedList.add('doce');
linkedList.add('alpha');
console.log(linkedList);

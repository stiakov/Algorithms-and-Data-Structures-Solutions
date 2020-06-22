/*
Implementar una función llamada encontrarFrases en NodeJs que reciba como primer parámetro un texto
y como segundo parámetro un arreglo de textos y devuelva un arreglo de los textos que pueden ser
construidos a partir de los caracteres de los textos del primer parámetro.

Por ejemplo si la función se invoca de esta manera:
const resultado = encontrarFrases("Yo soy un developer", [
"Yo puedo",
"Yo puedo puedo",
"No coincide",
"pelo duro",
]);
el resultado deberá contener 2 elementos ["pelo duro", "Yo puedo"] ya que ambas frases se pueden
construir utilizando los caracteres del texto "Yo soy un developer" sin reutilizar letras.

Considera que tanto los textos como las frases pueden tener hasta 1,000,000 de caracteres por lo
que tu código deberá ser lo más eficiente posible.
*/

function findPhrase(baseStr, collection) {
  const mainUniq = getUniqueChars(baseStr);
  const mainCount = charCounter(mainUniq, baseStr);
  return collection.filter(sentence => comparer(sentence, mainCount));
}

const getUniqueChars = (str) => Array.from(new Set(str.toLowerCase()));

const charCounter = (charset, str) => {
  const charCounter = {};
  charset.forEach(char => {
    const rx = new RegExp(char, 'gi');
    const count = str.match(rx)
    charCounter[char] = count ? count.length : 0;
  });
  return charCounter;
}

const comparer = (sentence, mainCount) => {
  const localUniques = getUniqueChars(sentence);
  const localCount = charCounter(localUniques, sentence);

  const valid = localUniques.every(char => {
    return mainCount.hasOwnProperty(char) && mainCount[char] >= localCount[char];
  });
  return valid;
}

// ====== TEST CASE ======

const res = findPhrase("Yo soy un developer", [
  "Yo puedo",
  "Yo puedo puedo",
  "No coincide",
  "pelo duro",
]);

console.log(res)

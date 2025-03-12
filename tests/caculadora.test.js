const calculadora = require("../models/calculadora.js");

const result = calculadora.somar(2, 2);
test("somar 2 + 2 deveria retornar 4", () => {
  expect(result).toBe(4);
});

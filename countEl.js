const arr = [1, 1, 1, 2, 3, 4, 5, 5, 5, 6, 6];

const countEl = arr =>
  arr.reduce(
    (acc, curr) => ({
      ...acc,
      [curr]: acc[curr] ? acc[curr] + 1 : 1,
    }),
    {}
  );

const start = performance.now();
const result = countEl(arr);
const end = performance.now();

console.log(result, `Time: ${end - start}ms`);

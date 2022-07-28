'reach 0.1';

export const main = Reach.App(() => {
  const A = Participant('A', { x: UInt, show: Fun(true, Null) });
  setOptions({ verifyArithmetic: true });
  init();
  A.only(() => {
    const x = declassify(interact.x);
  });
  A.publish(x);
  const y = safeSub(x, 5);
  enforce(x > 5);
  const z = x - 5;
  A.interact.show(y);
  A.interact.show(z);
  commit();
});

# Curve Params Calculator

This is used for curve params calculation for `zero-crypto` by **sagemath**.

## Usage

Replace [`field.sage`](./src/field.sage) p param with your preference.

```
$ docker-compose up
$ docker-compose exec sage sage src/field.sage
```

Command outputs rust constants necessary for construction of field as following.

```rust
const MODULUS: [u64; 4] = [
    0x43e1f593f0000001,
    0x2833e84879b97091,
    0xb85045b68181585d,
    0x30644e72e131a029,
];

const R: [u64; 4] = [
    0xac96341c4ffffffb,
    0x36fc76959f60cd29,
    0x666ea36f7879462e,
    0x0e0a77c19a07df2f,
];

const R2: [u64; 4] = [
    0x1bb8e645ae216da7,
    0x53fe3ab1e35c59e3,
    0x8c49833d53bb8085,
    0x0216d0b17f4e44a5,
];

const R3: [u64; 4] = [
    0x5e94d8e1b4bf0040,
    0x2a489cbe1cfbb6b8,
    0x893cc664a19fcfed,
    0x0cf8594b7fcc657c,
];

const INV: u64 = 0xc2e1f593efffffff;
```

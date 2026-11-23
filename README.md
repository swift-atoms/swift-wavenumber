# swift-wavenumber

Use this package when a value is wavenumber: how fast a wave's phase turns along a distance. Start from `Wavenumber`, a kind of quantity of swift-quantity, and make an amount with `Wavenumber.amount(_:)`; it is a `Wavenumber.Value<Scalar>`, a `Tagged<Wavenumber, Scalar>`.

## Laws

- An amount of wavenumber is stored in radians per metre, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is length: -1 (exponents of the base dimensions).
- Amounts of wavenumber add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- An angular frequency over a velocity is a wavenumber (k = omega / c), and a wavenumber times a velocity is an angular frequency.

/// Wavenumber: how fast a wave's phase turns along a distance, stored in radians per metre.
public enum Wavenumber {}

extension Wavenumber: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -1) }
}

extension Wavenumber {
    /// An amount of wavenumber, its scalar in radians per metre.
    public typealias Value<Scalar> = Tagged<Wavenumber, Scalar>
}

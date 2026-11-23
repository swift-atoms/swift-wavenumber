public import Quantity

extension Tagged::Tagged where Tag == Frequency.Angular, Underlying: FloatingPoint {
    /// The wavenumber of a wave of this angular frequency travelling at `rhs`.
    @inlinable
    public static func / (lhs: Self, rhs: Velocity.Value<Underlying>) -> Wavenumber.Value<Underlying> {
        Wavenumber.amount(lhs.underlying / rhs.underlying)
    }
}

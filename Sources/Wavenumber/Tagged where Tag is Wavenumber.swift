public import Quantity

extension Tagged::Tagged where Tag == Wavenumber, Underlying: Numeric {
    /// The angular frequency of a wave of this wavenumber travelling at `rhs`.
    @inlinable
    public static func * (lhs: Self, rhs: Velocity.Value<Underlying>) -> Frequency.Angular.Value<Underlying> {
        Frequency.Angular.amount(lhs.underlying * rhs.underlying)
    }
}

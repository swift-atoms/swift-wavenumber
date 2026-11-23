import Testing
import Wavenumber

enum `Wavenumber Tests` {}

extension `Wavenumber Tests` {
    @Suite struct `Wavenumber is a kind of quantity in radians per metre` {
        @Test func `Its dimension is length: -1`() {
            #expect(Wavenumber.dimension == Quantity.Dimension(length: -1))
        }

        @Test func `An amount given in radians per metre keeps its scalar`() {
            #expect(Wavenumber.amount(2.5).underlying == 2.5)
        }
    }

    @Suite struct `A wavenumber is an angular frequency over a velocity` {
        @Test func `Its dimension balances`() {
            #expect(Wavenumber.dimension == Frequency.Angular.dimension / Velocity.dimension)
        }

        @Test func `An angular frequency over a velocity, and back`() {
            let k = Frequency.Angular.amount(6.0) / Velocity.amount(2.0)
            #expect(k == Wavenumber.amount(3.0))
            #expect(k * Velocity.amount(2.0) == Frequency.Angular.amount(6.0))
        }
    }
}

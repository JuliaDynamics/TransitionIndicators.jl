using TransitionIndicators, LinearAlgebra, FFTW, Test

@testset "Testing a stack of Fourier surrogates" begin
    ns = 1_000
    nx = 100
    x = rand(nx)
    S = generate_surrogates(x, TransitionIndicators.RandomFourier(), ns)
    @test size( norm( fft(S, 2) - repeat(fft(x)', outer = (ns, 1)) ) ) == ()
end
function generate_surrogates(
    x::AbstractVector{T},
    method::TimeseriesSurrogates.Surrogate,
    n::Int,
) where {T<:Real}
    S = zeros(T, n, length(x))
    sg = TimeseriesSurrogates.surrogenerator(x, method)

    for i in axes(S, 1)
        S[i, :] = sg()
    end
    return S
end

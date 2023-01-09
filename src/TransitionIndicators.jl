module TransitionIndicators

using Reexport
@reexport using TimeseriesSurrogates

include("windowing.jl")
include("surrogates.jl")

export WindowViewer
export generate_surrogates

end # module TransitionIndicators
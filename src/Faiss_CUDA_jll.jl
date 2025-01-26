# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Faiss_CUDA_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("Faiss_CUDA")
JLLWrappers.@generate_main_file("Faiss_CUDA", UUID("57154dfa-8ce1-53a2-a7ab-dcd9e58fb5bc"))
end  # module Faiss_CUDA_jll

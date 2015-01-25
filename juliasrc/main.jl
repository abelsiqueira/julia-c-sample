n = 100
x = rand(n)
y = rand(n)

d = ccall( (:dot,"../csrc/libcjulia"), Float64, (Uint8, Ptr{Float64},
      Ptr{Float64}), n, x, y)
println("<x,y> = ", d)

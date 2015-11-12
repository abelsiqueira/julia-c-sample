function cdot(n::Int, x::Array{Float64,1}, y::Array{Float64,1})
  d = ccall( (:dot,"libcjulia"), Float64, (Ptr{Cint}, Ptr{Float64},
        Ptr{Float64}), Cint[n], x, y)
  return d
end

n = 100
x = rand(n)
y = rand(n)

N = 10000000
println("<x,y> = ", cdot(n, x, y))
for i = 1:N
  d = cdot(n, x, y)
end

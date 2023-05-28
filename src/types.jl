mutable struct Point
    c::Vector{Float64}
   
# ctor
    function Point(a::Array{<:Real})
        p = new([
                convert(Float64, a[1]),
                convert(Float64, a[2]),
                convert(Float64, a[3])
            ])
        return p
    end

    function Point(c1::Real,c2::Real,c3::Real)
        p = new([
            convert(Float64, c1),
            convert(Float64, c2),
            convert(Float64, c3)
        ])
        return p
    end
end

mutable struct Vec
    c::Vector{Float64}

# ctor
    function Vec(a::Array{<:Real})
        v = new([
                convert(Float64, a[1]),
                convert(Float64, a[2]),
                convert(Float64, a[3])
            ])
        return v
    end

    function Vec(c1::Real,c2::Real,c3::Real)
        v = new([
            convert(Float64, c1),
            convert(Float64, c2),
            convert(Float64, c3)
        ])
        return v
    end
end

mutable struct FaceEdge
end

mutable struct Face
    edges::Vector{FaceEdge}
    surface::Union{Int,Float64}
end

mutable struct Cuboid
    origin::Point
    diagonal::Vec
    corners::Vector{Point}
    faces::Vector{Face}
    region::Union{Int,Float64}

    function Cuboid(o::Point,d::Vec)
        cub = new(o,d)
        
        return cub
    end
end
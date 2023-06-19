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
    point1::Point
    point2::Point

# ctor
    function FaceEdge(p1::Point,p2::Point)
        fe = new(p1,p2) 
        return fe       
    end
end

mutable struct Face
    edges::Vector{FaceEdge}
    surface::Tuple{Int,Float64}

# ctor
    function Face(ed::Vector{FaceEdge},surf::Tuple{Int,Float64})
        f = new(ed,surf)
        return f
    end

    function Face(pts::Vector{Point},surf::Tuple{Int,Float64})
        if lastindex(pts) < 3
            error("It takes at least 3 points to define a surface with volume not equal to 0.")
        end

        fe = Vector{FaceEdge}
        for i in 1:lastindex(pts)
            i1 = i
            i2 = mod1(i+1,lastindex(pts))
            fe = [fe...,FaceEdge(pts[i1],pts[i2])]
        end

        f = new(fe,surf)
        return f
    end
end

mutable struct Cuboid
    origin::Point
    diagonal::Vec
    corners::Vector{Point}
    faces::Vector{Face}
    region::Tuple{Int,Float64}

    function Cuboid(o::Point,d::Vec)
        cub = new(o,d)
        
        return cub
    end
end
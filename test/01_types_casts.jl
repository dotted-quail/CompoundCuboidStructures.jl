using CompoundCuboidStructures

p1 = Point(0,0,0)
p2 = Point(1,0,0)
p3 = Point(0,1,0)
p4 = Point(1,1,0)

v1 = Vec(1,1,1)

fe1 = FaceEdge(p1,p2)

surf_idx = (1,1.0)

f1 = Face([p1,p2,p3],surf_idx) 

fieldnames(typeof(f1))

f1.edges
#cub1 = Cuboid(p1,v1)
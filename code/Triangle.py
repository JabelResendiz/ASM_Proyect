

# Returns true if points a, b, c form a triangle rectangle


def triangle_rectangle(a,b,c):
    
    distance_ab= (a[0]-b[0])**2 + (a[1]-b[1])**2
    distance_bc= (c[0]-b[0])**2 + (c[1]-b[1])**2
    distance_ac= (a[0]-c[0])**2 + (a[1]-c[1])**2

    if distance_ab == distance_ac + distance_bc or distance_ac== distance_ab+ distance_bc or distance_bc== distance_ab+distance_ac:
        return True

    return False
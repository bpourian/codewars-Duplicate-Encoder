=begin
Third Angle of a Triangle
You are given two angles (in degrees) of a triangle.

Write a function to return the 3rd.

Note: only positive integers will be tested.
=end

def other_angle(a, b)
    180 - a - b
end

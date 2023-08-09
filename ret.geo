// Gmsh project created on Thu Sep  5 13:35:02 2019
SetFactory("OpenCASCADE");
//+
Point(1) = {-20,-20, 0,0.6};
//+
Point(2) = {60,-20,0, 0.6};
//+
Point(3) = {60, 20, 0, 0.6};
//+
Point(4) = {-20, 20, 0, 0.6};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {4, 3};
//+
Line(4) = {4, 1};

Point(5) = {2.5, -0.5, 0, 0.05};
//+
Point(6) = {-2.5, -0.5, 0, 0.05};
//+
Point(7) = {2.5, .5, 0, 0.05};

Point(8) = {-2.5, .5, 0, 0.05};
//+

Line(5) = {6,5};
//+
Line(6) = {5,7};
//+
Line(7) = {7,8};
//+
Line(8) = {8,6};
//+
Line Loop(1) = {1,2,3,4}; 
Line Loop(5)={5,6,7,8};
Plane Surface (1) = {1,5};
//+
//Characteristic Length {5} = 0.005;

Extrude {0,0,1}{
Surface{1};
Layers{1};
Recombine;
}

Physical Surface("frontback")={1,10};
Physical Surface("walls")={6,7,8,9};
Physical Surface("inlet")={5};
Physical Surface("outlet")={3};
Physical Surface("topbottom")={2,4};
Physical Volume("internalField")={1};


//+
Rotate {{0, 0, 1}, {0, 0, 0}, Pi/90} {
   Curve{19}; Curve{24}; Curve{23}; Curve{21};  Curve{8}; Curve{17}; Curve{22}; Curve{5}; Curve{18}; Curve{6}; Curve{20};  Curve{7}; 
}



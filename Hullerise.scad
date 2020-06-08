
// TODO: Document this module
module Hullerise()
{
    for (i = [1 : $children - 1])
    {
        hull()
        {
            children(i - 1);
            children(i);
        }
    }
}

module Hullerise_Example1()
{
    Hullerise()
    {
        translate([10, 10, 0]) cube([1, 1, 1]);
        translate([20, 20, 0]) cube([1, 1, 1]);
        translate([50, 30, 0]) cube([1, 1, 1]);
        translate([60, 40, 0]) cube([1, 1, 1]);
    }
}

module Hullerise_Example2()
{
    Hullerise()
    {
        translate([0, 0,  0]) cylinder(r = 5, h = 40, $fn = 60);
        translate([0, 0, 40]) cylinder(r = 3, h = 10, $fn = 30);
        translate([0, 0, 50]) cylinder(r = 2, h = 20, $fn = 6);
        translate([0, 0, 70]) cylinder(r = 3, h = 10, $fn = 60);
    }
}

//Hullerise_Example1();
//Hullerise_Example2();


// Based on https://www.datapro.net/drawings/cutouts/vga_cutout.pdf

DEFAULT_FN = 60;

module VgaCutout(withScrewHoles = true, fn = DEFAULT_FN)
{
    translate([19 / -2, 10 / -2])
    hull()
    {
        translate([2,      10 - 1]) square([15, 1]);
        translate([0,     7.4 - 1]) square([19, 1]);
        translate([1,         2.2]) square([17, 1]);
        translate([(19-13.5)/2, 0]) square([13.5, 1]);
    }

    if (withScrewHoles)
    {
        translate([25 /  2, 0]) circle(3.2 / 2, $fn = DEFAULT_FN);
        translate([25 / -2, 0]) circle(3.2 / 2, $fn = DEFAULT_FN);
    }

    if ($preview)
    {
        #square([34, 14], center = true);
    }
}

//VgaCutout();

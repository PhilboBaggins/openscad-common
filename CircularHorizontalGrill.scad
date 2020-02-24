
DEFAULt_RADIUS = 50;
DEFAULT_GRILL_WIDTH = 1;
DEFAULT_GRILL_SPACING = 2;

module CircularHorizontalGrill(
    radius = DEFAULt_RADIUS,
    grillWidth = DEFAULT_GRILL_WIDTH,
    grillSpacing = DEFAULT_GRILL_SPACING)
{
    numRow = radius * 2 / (grillWidth + grillSpacing);

    intersection()
    {
        circle(radius);

        translate([0, numRow / -2 * (grillWidth + grillSpacing)])
        for (row = [1 : numRow])
        {
            translate([0, row * (grillWidth + grillSpacing)])
            square([radius * 2, grillWidth], center=true);
        }
    }
}

CircularHorizontalGrill();

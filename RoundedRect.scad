
// TODO: Add description

module RoundedRect2D(size, cornerRadius)
{
    x1 =           cornerRadius;
    x2 = size[0] - cornerRadius;
    y1 =           cornerRadius;
    y2 = size[1] - cornerRadius;

    hull()
    {
        translate([x1, y1]) circle(r=cornerRadius);
        translate([x2, y1]) circle(r=cornerRadius);
        translate([x1, y2]) circle(r=cornerRadius);
        translate([x2, y2]) circle(r=cornerRadius);
    }
}

module RoundedRect3D(size, cornerRadius, height)
{
    linear_extrude(height)
    RoundedRect2D(size, cornerRadius);
}

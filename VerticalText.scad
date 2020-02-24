
DEFAULT_HEIGHT = 10;
DEFAULT_SPACING = 1;
DEFAULT_FONT = "Liberation mono";

module VerticalText(
    string,
    height = DEFAULT_HEIGHT,
    spacing = DEFAULT_SPACING,
    font = DEFAULT_FONT)
{
    translate([0, height / -2])
    for (i = [0 : len(string) - 1])
    {
        translate([0, (height + spacing) * -i])
        resize([0, height], auto = true)
        text(string[i], font=font, halign = "center", valign = "center");
    }
}

translate([-4, 0]) VerticalText("abcdef");
translate([ 4, 0]) VerticalText("ABCDEF");

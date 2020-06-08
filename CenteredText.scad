module CenteredText(text, area, resizeTextHeight = false, font = "Helvetica")
{
    length = area[0];
    height = area[1];

    translate([(length / -2), 0])
    resize([length, resizeTextHeight ? height : 0], auto = true)
    text(text, font=font, valign = "center");
}

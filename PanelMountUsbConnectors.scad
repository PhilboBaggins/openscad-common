DEFAULT_FN = 60;

USB_CUTOUT_SIZE = [6.5, 13.5];
USB_BODY_SIZE = [14, 40, 30];

DUAL_USB_CUTOUT_SIZE = [15, 14];
DUAL_USB_BODY_SIZE = [16.5, 40, 35];

USB_SCREW_HOLE_RADIUS = 3.5 / 2;

module PanelMountUsbCutout(cutoutSize, bodySize, fn = DEFAULT_FN, showBodyPreview = false)
{
    // Space for USB connector/s
    square(cutoutSize, center = true);

    // Screw holes
    translate([0,  29.5 / 2]) circle(USB_SCREW_HOLE_RADIUS, $fn = fn);    
    translate([0, -29.5 / 2]) circle(USB_SCREW_HOLE_RADIUS, $fn = fn); 

    // Preview only - Outer body of USB connector
    if ($preview)
    if (showBodyPreview)
    {
        #hull()
        {
            translate([0,  bodySize[1] / 2]) circle(bodySize[0] / 2);
            translate([0, -bodySize[1] / 2]) circle(bodySize[0] / 2);
        }
    }
}

module PanelMountSingleUsbCutout(fn = DEFAULT_FN, showBodyPreview = true)
{
    PanelMountUsbCutout(USB_CUTOUT_SIZE, USB_BODY_SIZE, fn, showBodyPreview);
}

module PanelMountDualUsbCutout(fn = DEFAULT_FN, showBodyPreview = true)
{
    PanelMountUsbCutout(DUAL_USB_CUTOUT_SIZE, DUAL_USB_BODY_SIZE, fn, showBodyPreview);
}

module PreviewPanelMountUsbCutout()
{
    translate([-USB_BODY_SIZE[0],     0]) PanelMountSingleUsbCutout();
    translate([DUAL_USB_BODY_SIZE[0], 0]) PanelMountDualUsbCutout();
}

//PreviewPanelMountUsbCutout();

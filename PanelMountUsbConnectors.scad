DEFAULT_FN = 60;

USB_CUTOUT_SIZE = [6.5, 13.5];
USB_BODY_SIZE = [14, 40];

DUAL_USB_CUTOUT_SIZE = [15, 14];
DUAL_USB_BODY_SIZE = [16.5, 40];

USB_SCREW_HOLE_RADIUS = 3.5 / 2;

module PanelMountUsbCutout(cutoutSize, bodySize, fn = DEFAULT_FN)
{
    // Space for USB connector/s
    square(cutoutSize, center = true);

    // Screw holes
    translate([0,  29.5 / 2]) circle(USB_SCREW_HOLE_RADIUS, $fn = fn);    
    translate([0, -29.5 / 2]) circle(USB_SCREW_HOLE_RADIUS, $fn = fn); 

    // Preview only - Outer body of USB connector
    if ($preview)
    {
        #hull()
        {
            translate([0,  bodySize[1] / 2]) circle(bodySize[0] / 2);
            translate([0, -bodySize[1] / 2]) circle(bodySize[0] / 2);
        }
    }
}

module PanelMountSingleUsbCutout(fn = DEFAULT_FN)
{
    PanelMountUsbCutout(USB_CUTOUT_SIZE, USB_BODY_SIZE, fn = fn);
}

module PanelMountDualUsbCutout(fn = DEFAULT_FN)
{
    PanelMountUsbCutout(DUAL_USB_CUTOUT_SIZE, DUAL_USB_BODY_SIZE, fn = fn);
}

module PreviewPanelMountUsbCutout()
{
    translate([-USB_BODY_SIZE[0],     0]) PanelMountSingleUsbCutout();
    translate([DUAL_USB_BODY_SIZE[0], 0]) PanelMountDualUsbCutout();
}

//PreviewPanelMountUsbCutout();

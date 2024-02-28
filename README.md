<!--

TOGGLE PREVIEW IN VISUAL STUDIO CODE:
    Ctrl + Shift + V

This space is designated for Markdown resources:
    - General Markdown Documentation: https://markdown-guide.readthedocs.io/en/latest/index.html

    - Markdown in Visual Studio Code Documentation: https://code.visualstudio.com/docs/languages/markdown

-->

# PIC10F200-Development
This a means to learn more about the PIC10F200 Microcontroller.

# Hardware Development

## Fabrication in the CSUB Fab Lab
The PCB Milling Machine in the CSUB Fab Lab are done using PNG files. The following are specifications for the machine:
- Black Lines or shapes in the file are to be milled at the same depth as other lines or shapes in the file
    - Therefore the milled elements such as traces are to be in different files from elements such as the board outline.
- Elements too small of a size (, size is yet to be determined) will not be recognized and will not be documented in the output document.
- Be sure to make the page size the same for all of the files. For example if the page size is 500px by 500px make sure it is consistent with other files.
- Make sure that the resolution is at least 600dpi for the device when exporting the PNG.
- Make sure that the front and the back files of the board are mirrors of each other. (Remember the transformation is dependent on how the actual board is flipped.)
- All holes are resized to 0.090mm
- Trace Width: 0.5mm

## Project Specific Files
PNG Files for this project have the following specifications:
### Version 1.0
- Page Size: 60 mm x 60 mm
- Distance from Page Origin to Board Origin:
    - X Value: 10mm
    - Y Value: 10mm
### Version 1.1
- Page Size: 50 mm x 50 mm
- Distance from Page Origin to Board Origin:
    - X Value: 3mm
    - Y Value: 3mm
### Version 1.2
- Page Size: 50 mm x 50 mm
- Distance from Page Origin to Board Origin:
    - X Value: 3mm
    - Y Value: 3mm

## Ordering PCB Boards
### JLC PCB
#### PCB Board: Green
Standard PCB/PCBA

General Information
- Filename: JLC_PCB-PIC10F200_PCB-V1.2.zip
- Base Material: FR-4
- Layers: 2
- Dimensions: $45 x 45$ mm
- PCB Quantity: 5
- Product Type: Industrial/Consumer Electronics

PCB Specifications
- Different Design: 1
- Delivery Format: Single PCB
- PCB Thickness: 1.6
- PCB Color: Green
- Silkscreen: White
- Surface Finish: LeadFree HASL

High-Spec Options
- Outer Copper Weight: 1 oz
- Via Covering: Tented
- Confirm Production File: No
- Remove Order Number: No
- Flying Probe Test: Fully Test
- Gold Fingers: No
- Castellated Holes: No

#### PCB Board: Purple
Standard PCB/PCBA

General Information
- Filename: JLC_PCB-PIC10F200_PCB-V1.2.zip
- Base Material: FR-4
- Layers: 2
- Dimensions: $45 x 45$ mm
- PCB Quantity: 5
- Product Type: Industrial/Consumer Electronics

PCB Specifications
- Different Design: 1
- Delivery Format: Single PCB
- PCB Thickness: 1.6
- PCB Color: Purple
- Silkscreen: White
- Surface Finish: LeadFree HASL

High-Spec Options
- Outer Copper Weight: 1 oz
- Via Covering: Tented
- Confirm Production File: No
- Remove Order Number: No
- Flying Probe Test: Fully Test
- Gold Fingers: No
- Castellated Holes: No

#### PCB Board: Blue
Standard PCB/PCBA

General Information
- Filename: JLC_PCB-PIC10F200_PCB-V1.2.zip
- Base Material: FR-4
- Layers: 2
- Dimensions: $45 x 45$ mm
- PCB Quantity: 5
- Product Type: Industrial/Consumer Electronics

PCB Specifications
- Different Design: 1
- Delivery Format: Single PCB
- PCB Thickness: 1.6
- PCB Color: Blue
- Silkscreen: White
- Surface Finish: LeadFree HASL

High-Spec Options
- Outer Copper Weight: 1 oz
- Via Covering: Tented
- Confirm Production File: No
- Remove Order Number: No
- Flying Probe Test: Fully Test
- Gold Fingers: No
- Castellated Holes: No

#### PCB Board: Black
Standard PCB/PCBA

General Information
- Filename: JLC_PCB-PIC10F200_PCB-V1.2.zip
- Base Material: FR-4
- Layers: 2
- Dimensions: $45 x 45$ mm
- PCB Quantity: 5
- Product Type: Industrial/Consumer Electronics

PCB Specifications
- Different Design: 1
- Delivery Format: Single PCB
- PCB Thickness: 1.6
- PCB Color: Black
- Silkscreen: White
- Surface Finish: LeadFree HASL

High-Spec Options
- Outer Copper Weight: 1 oz
- Via Covering: Tented
- Confirm Production File: No
- Remove Order Number: No
- Flying Probe Test: Fully Test
- Gold Fingers: No
- Castellated Holes: No

#### Shipping
Method of Delivery: Parcel International Direct

### OSH Park
#### PCB Board: Purple
Regular

#### PCB Board: Black
After Dark (Black Substrate + Clear Mask)

### PCB Way
#### PCB Board: Black
Order Type: Standard PCB

General Information
- Board Type: Single Pieces
- Different Design in Panel: 1
- *Size (single): $45x45$ mm
- *Quantity: 5 pcs
- Layers: 2 Layers
- Material: FR-4
- FR4-TG: TG 150-160
- Thickness: 1.6 mm
- Min Track/ Spacing: 6/6mil
- Min Hole Size: 0.3mm $\uparrow$
- Solder Mask: Green
- Silkscreen: White
- Edge Connector: No
- Surface Finish: HASL lead free
- Via Process: Tenting Vias
- Finished Copper: 1 oz Cu
- Remove pcb identification number: no

Additional Options: No

#### Shipping: United State Postal Service

# Software Development
Programming for the PIC10F200 Microcontroller will be done using the following:
- **PIC10F200 Microcontroller:** Microcontroller used for development in this project
- **MPLAB X IDE:** Integrated Development Environment for programming the Microcontroller
- **MPLAB X IPE:** Integrated Programming Environment for formatting the Microcontroller Directly
- **PICkit 3:** Interface the microcontroller with the computer through USB for programming.
- **USB Adapter (USB Mini to USB 2.0):** Connects PICkit3 (USB Mini) to a computer (USB 2.0)
- **Male to Male, 6 Pin Jumper Wire:** Connects the PICkit3 to the breadboard to interface with the microcontroller
- **Mini Solderless Breadboard:** Interfaces with the Jumper Wire output of the PICkit3 to the PIC10F200

## Study-CircuitBread
In the folder titled: ``Study-CircuitBread`` there are a series of studies from CircuitBread of which may be based on thier designs.

## Project_Files
This folder is a place to put code to test out using the ``PIC10F200``.

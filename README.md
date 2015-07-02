# odot-svg library
odot-svg is a collection of MaxMSP objects (Pd version coming shortly) and Adobe Illustrator scripts for creating and performing digital scores using the Scalable Vector Graphics (SVG) format.

### objects
There are two main objects for the current system:
* o.svg is an object to transcode SVG files into a OSC bundle.
* o.table.sort is a version of the odot o.table, with added functionality for sorting and optimized linear lookup

### build dependencies
* CNMAT-odot: https://github.com/CNMAT/CNMAT-odot (see repository for other dependencies)
* max6-sdk
* pure-data source

### documentation
For more detailed information, please see the paper included in the doc folder.

### demos
Some demos of the system in action are available here:
* editing spatial trajectories in frame notation: https://vimeo.com/132389233
* spatial frame notation layer organization in Illustrator: https://vimeo.com/132385223
* frame example svg file organization (result of layer organization in Illustrator): https://vimeo.com/132385220
* importing the SVG file as OSC (odot) in Max : https://vimeo.com/132385218
* granular synthesis notation example: https://vimeo.com/132385305
* granular example patch walkthrough: https://vimeo.com/132385221

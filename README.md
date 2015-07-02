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
For more detailed information, please see the paper included in the doc folder
( https://github.com/ramagottfried/odot-svg/blob/master/doc/SVG-OSC-Notation-revised.pdf ).

### demos
Some video demos of the system in action are available here:
* <a href="https://vimeo.com/132389233" target="_blank">editing spatial trajectories in frame notation</a>
* <a href="https://vimeo.com/132385223" target="_blank">spatial frame notation layer organization in Illustrator</a>
* <a href="https://vimeo.com/132385220" target="_blank">frame example svg file organization (result of layer organization in Illustrator)</a>
* <a href="https://vimeo.com/132385218" target="_blank">importing the SVG file as OSC (odot) in Max</a>
* <a href="https://vimeo.com/132385305" target="_blank">granular synthesis notation example</a>
* <a href="https://vimeo.com/132385221" target="_blank">granular example patch walkthrough</a>

Labeling items in Illustrator, keep in mind your OSC routing scheme, e.g /staff/pitches + /staff/blips is easier to route because both are of type /staff.

Due to the large number of grouped elements in a typical illustrator score, I am stripping the <g> element tag and replacing it with the ID of the group. However, if there is no ID tag associated with the group, Illustrator creates a unique name (e.g "XLMID_1"), as a result for ease of parsing, it's a good idea to give names to your groups.

When saving SVG from Illustrator, the CSS option will change the way stroke information is stored, currently for best results use Presentation Attributes.


At some point the rect objects being used as "staff" for some reason lost its x attribute, this was probably caused by the CSS issue above.

When editing events within an events group you can copy objects via alt-click-drag, and those objects will be added to that group *only if you do not select the entire group* otherwise a new group will be created instead of adding to the base group. If your interpretation engine is not aware of more than one group (e.g. /events) then it may fail to find all of the events to play.

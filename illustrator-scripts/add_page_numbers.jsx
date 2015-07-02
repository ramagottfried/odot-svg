﻿function  main(){    if ( app.documents.length > 0 ) {        doc = app.activeDocument;                var layer = doc.layers.add();                var pgroup = layer.groupItems.add();        pgroup.name = 'rehearsal-marks';                var ab = doc.artboards;        var nabs = ab.length;        var mm = 2.834645; //points per mm        var count = 1;                for( var i = 0; i < nabs; i++)        {            var numbox = pgroup.groupItems.add();            numbox.name = 'rehearsal-mark';                        var pnum = numbox.textFrames.add();            pnum.contents = String(count++);            pnum.stroked = false;            pnum.fillColor = 'black';            pnum.name = 'rehearsal-number';                                                  var bounds = ab[i].artboardRect;            var x1 = bounds[0];            var x2 = bounds[2];            var x = x1 + 72;//((x2 - x1) / 2)            var y = bounds[3] + pnum.height + (10 * mm);                                        pnum.position = [x, y];            pnum.textRange.justification = Justification.CENTER;                                       var diam = Math.ceil(pnum.height > pnum.width ? pnum.height : pnum.width);            var rad = diam / 2.;            var box = numbox.pathItems.rectangle(0, 0, diam, diam);            box.stroked = true;            box.filled = false;            box.translate(x-rad+0.5, y+0.5);                            /*                        for(var j = 0; j < items.length; j++)            {                if(items[j].typename == 'GroupItem' && items[j].name.search('page') >= 0)                {                   //var temp = doc.layers.add(); //<< optionally move to new layer                   //temp.name = 'page_'+(j+1);                   //items[j].duplicate(temp, ElementPlacement.PLACEATEND);                                                                                                    items[j].name = 'page-'+( ++count );                }            }*/                                }                          }else{        Window.alert("You must open at least one document.");    }  }main();
﻿//TO DO: add cautionary meter change at end of previous stave, ignore repeated measures//NOTE: this routine uses the 'page' group to find previous measurefunction getInputStr()  {    var myWindow = new Window ("dialog", "Create Measures for Group");    var myInputGroup = myWindow.add ("group");    myInputGroup.add ("statictext", undefined, "meters:");    var myText = myInputGroup.add ("edittext", undefined, "4/4 2/4 3/2");    myText.characters = 20;    myText.active = true;    var myInputGroup2 = myWindow.add ("group");    myInputGroup2.add ("statictext", undefined, "x offset:");    var offestText = myInputGroup2.add ("edittext", undefined, "8");    offestText.characters = 20;    offestText.active = true;    var myInputGroup3 = myWindow.add ("group");    myInputGroup3.add ("statictext", undefined, "y offset:");    var offestTextY = myInputGroup3.add ("edittext", undefined, "0"); //was -25    offestTextY.characters = 20;    offestTextY.active = true;    var myInputGroup4 = myWindow.add ("group");    myInputGroup4.add ("statictext", undefined, "base name");    var nameText = myInputGroup4.add ("edittext", undefined, "system");    nameText.characters = 20;    nameText.active = true;    var myButtonGroup = myWindow.add ("group");    myButtonGroup.alignment = "right";    myButtonGroup.add ("button", undefined, "OK");    myButtonGroup.add ("button", undefined, "Cancel");    if (myWindow.show () == 1)    {        var ui_input = new UI_input();        ui_input.measureStr = myText.text;        ui_input.xoffset = offestText.text;        ui_input.yoffset = offestTextY.text;        ui_input.basename = nameText.text;        return ui_input;    } else {        return 0;    }}function getPropotions(strArr){        var beats = Array(strArr.length);        var ratios = Array(strArr.length);        var count = 0;        for(var i = 0; i < strArr.length; i++)        {                beats[i] = eval(strArr[i]);                count += beats[i];        }        for(var i = 0; i < strArr.length; i++)        {                ratios[i] = beats[i] / count;        }        return ratios; }function getYbounds(x, sel){//    $.writeln('name: '+sel.name+' type '+sel.typename);    var items = sel.pageItems;    for( var i = 0; i < items.length; i++ )    {        var it = items[i];        $.writeln('----- item: typename name '+it.typename+' '+it.name);        if(it.name == 'winds' || it.name == 'percussion' || it.name == 'strings')        {            x.y1[x.numLines] = it.controlBounds[1];            x.y2[x.numLines] = it.controlBounds[3];//            $.writeln('line '+x.numLines+' '+x.y1[x.numLines]+' '+x.y2[x.numLines]);            x.numLines++;        }    }    if(!x.y1[0])    {        x.y1[0] = sel.controlBounds[1];        x.y2[0] = sel.controlBounds[3];        x.numLines++;    }}function getXbounds(x, sel){    x.depth++;    $.writeln('depth '+x.depth+' name: '+sel.name+' type '+sel.typename);//      we know it's a group coming in//    if(sel.typename == 'GroupItem' )    {        var items = sel.pageItems;        for( var i = 0; i < items.length; i++ )        {            var it = items[i];//            $.writeln('----- item: typename name '+it.typename+' '+it.name);            if(it.typename == 'GroupItem')            {                if(it.name.search('staff') >= 0)                {                    x.staffFound = true;                    x.x1 = it.controlBounds[0];                    x.x2 = it.controlBounds[2];                    $.writeln('group staff '+x.x1);                    return true;                }                else                {                    if( getXbounds(x, it) )                        return true;                    x.depth--;                }            }            else if(it.name.search('staff') >= 0)            {                if(it.typename == 'PathItem')                {                    x.staffFound = true;                    var pts = it.pathPoints;                    for(var j = 0; j < pts.length; j++)                    {                        if(i == 0 && j == 0)                        {                            x.x1 = pts[j].anchor[0];                            x.x2 = x.x1;                        } else {                                                                $.writeln('path staff '+x.x1+' '+pts[j].anchor[0]);                            x.x1 = (pts[j].anchor[0] < x.x1) ? pts[j].anchor[0] : x.x1 ;                            x.x2 = (pts[j].anchor[0] > x.x2) ? pts[j].anchor[0] : x.x2 ;                        }                    }                    return true;                }            }        }        return false;    }}function makeMeasures(sel, measures, ratios, bounds, prev){    var x = bounds.x1; //20 pts for clef?  maybe make input for this later    var cleffoffset = 15;    var length = bounds.x2 - bounds.x1 - cleffoffset;    var i,j;    var prevMeasure = prev.meter;    for( i = 0; i < measures.length; i++)    {        var mgroup = sel.groupItems.add();        mgroup.name = 'measure-'+(i+prev.mnumber+1);        if(measures[i] != prevMeasure)        {            var meterStr = measures[i].split('/');            var meter = mgroup.textFrames.add();            meter.contents = meterStr[0] + '\n' + meterStr[1];            meter.stroked = false;            meter.fillColor = 'black';            meter.name = 'meter';            meter.position = [x, bounds.y1[0] + meter.height];            meter.textRange.justification = Justification.CENTER;            if(bounds.numLines > 2)            {                var meter2 = mgroup.textFrames.add();                meter2.contents = meterStr[0] + '\n' + meterStr[1];                meter2.stroked = false;                meter2.fillColor = 'black';                meter2.name = 'meter';                meter2.position = [x, bounds.y1[bounds.numLines - 1] + meter2.height];                meter2.textRange.justification = Justification.CENTER;            }            if(i == 0 && prev.stave) //add cautionary meter to previous stave            {                var pmgroup = prev.stave.groupItems.add();                pmgroup.name = 'cautionary-measure-'+(i+prev.mnumber+1);                var pmeter = pmgroup.textFrames.add();                pmeter.contents = meterStr[0] + '\n' + meterStr[1];                pmeter.stroked = false;                pmeter.fillColor = 'black';                pmeter.name = 'meter';                pmeter.position = [prev.bounds.x2, prev.bounds.y1[0] ];                pmeter.textRange.justification = Justification.CENTER;                if(prev.bounds.numLines > 2)                {                    var pmeter2 = pmgroup.textFrames.add();                    pmeter2.contents = meterStr[0] + '\n' + meterStr[1];                    pmeter2.stroked = false;                    pmeter2.fillColor = 'black';                    pmeter2.name = 'meter';                    pmeter2.position = [prev.bounds.x2, prev.bounds.y1[prev.bounds.numLines - 1] ];                    pmeter2.textRange.justification = Justification.CENTER;                }            }            prevMeasure = measures[i];        }        x += cleffoffset * (i == 0);        x += ratios[i] * length;        for( j = 0; j < bounds.numLines; j++)        {            var barline = mgroup.pathItems.add();            barline.stroked = true;            barline.sliced = false;            barline.setEntirePath([ [ x, bounds.y1[j] ], [ x, bounds.y2[j] ] ]);            barline.name = "barline";        }    } }function getPrevMeasures(score, prev){  //  var pages = score.artboards;  //  var npages = pages.length;    var layer = doc.activeLayer;    var count = 0;    var stave = null;    var prevMeter = "";// need to iterate everything to cound systems, I was assuming that pages where systems, but that's wrong    var pitems = layer.groupItems;    for( var i = 0; i < pitems.length; i++ )    {        var page = layer.groupItems.getByName(prev.basename+'-'+(i+1));        var items = page.pageItems;        for( var j = 0; j < items.length; j++ )        {                if( items[j].name.split('-')[0] == 'measure')                {                    count++;                    stave = page;                    try {                        prevMeter = items[j].pageItems.getByName('meter').contents;                    }                    catch(err){} //no meter text if it was a repeated meter                }        }    }            $.writeln("prev number "+count);    prev.mnumber = count;    if(stave)    {        if(prevMeter)            prev.meter = prevMeter;        prev.stave = stave;        getYbounds(prev.bounds, prev.stave);        getXbounds(prev.bounds, prev.stave);        prev.bounds.x1 += prev.xoffset;        prev.bounds.y1[0] += prev.yoffset;        //$.writeln(prev.yoffset, prev.bounds.y1[0]);    }}function StaffBounds(){    this.x1 = null;    this.x2 = null;    this.y1 = [null,null,null,null];    this.y2 = [null,null,null,null];    this.staffFound = false;    this.depth = 0;    this.numLines = 0;}function PrevMeasure(){    this.meter = "";    this.mnumber = 0;    this.bounds = new StaffBounds();    this.stave = null;    this.xoffset = 0;    this.yoffset = 0;    this.basename = "page";}function UI_input(){    this.measureStr = "";    this.xoffset = 0;    this.yoffset = 0;    this.basename = "";}function  main(){    if ( app.documents.length > 0 ) {        doc = app.activeDocument;                app.coordinateSystem = CoordinateSystem.DOCUMENTCOORDINATESYSTEM;//~     if(!doc.saved){//~        Window.alert("This script needs to modify your document. Please save it before running this script.");//~     } else {        var ui_input = getInputStr(doc);        var measureStr = ui_input.measureStr;        if(!measureStr)            return 0;        var measures = measureStr.split(" ");        if(measures.length > 0)        {            var ratios = getPropotions(measures);            var selected = doc.selection;            if(selected.length == 0 || selected.length > 1)            {                Window.alert("please select stave or stave group to divide into measures");              //  $.writeln(selected.length);                return 0;            }            var sel = selected[0];            var bounds = new StaffBounds();            getYbounds(bounds, sel);            if( !getXbounds(bounds, sel) )                return;            $.writeln('x1 '+bounds.x1+' x2 '+bounds.x2);            var prevM = new PrevMeasure();            if(ui_input.basename != "")                prevM.basename = ui_input.basename;            $.writeln(ui_input.basename);            bounds.x1 += Number(ui_input.xoffset);            bounds.y1[0] += Number(ui_input.yoffset);            prevM.xoffset = Number(ui_input.xoffset);            prevM.yoffset = Number(ui_input.yoffset);            getPrevMeasures(doc, prevM);            makeMeasures(sel, measures, ratios, bounds, prevM);        } else {            Window.alert("no measures to write");        }//~     }    }else{        Window.alert("You must open at least one document.");    }}main();
{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 0,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 59.0, 104.0, 1005.0, 700.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 47.0, 187.0, 127.0, 22.0 ],
					"style" : "",
					"text" : "o.route /scene/1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 47.0, 147.0, 127.0, 22.0 ],
					"style" : "",
					"text" : "o.route /Layer/1/stave"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 47.0, 97.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "o.flatten"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 747.0, 682.0, 150.0, 30.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 47.0, 16.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"linecount" : 59,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 47.0, 225.0, 726.0, 822.0 ],
					"text" : "/type : \"g\",\n/id : \"scene-1\",\n/frame/type : \"rect\",\n/frame/id : \"frame\",\n/frame/x : 93.2,\n/frame/y : 72.2,\n/frame/fill : \"none\",\n/frame/stroke : \"#000000\",\n/frame/stroke-miterlimit : 10.,\n/frame/width : 116.,\n/frame/height : 101.7,\n/source/type : \"circle\",\n/source/id : \"source\",\n/source/fill : \"none\",\n/source/stroke : \"#000000\",\n/source/stroke-miterlimit : 10.,\n/source/cx : 100.4,\n/source/cy : 167.,\n/source/r : 1.2,\n/trajectory/type : \"g\",\n/trajectory/id : \"trajectory\",\n/trajectory/g/1/type : \"g\",\n/trajectory/g/1/id : \"g/1\",\n/trajectory/g/1/path/1/type : \"path\",\n/trajectory/g/1/path/1/id : \"path/1\",\n/trajectory/g/1/path/1/fill : \"none\",\n/trajectory/g/1/path/1/stroke : \"#000000\",\n/trajectory/g/1/path/1/stroke-width : 0.5,\n/trajectory/g/1/path/1/stroke-miterlimit : 10.,\n/trajectory/g/1/path/1/d/0/M : [100.4, 167.],\n/trajectory/g/1/path/1/d/1/c : [100.4, 167., 100.4, 166.8, 100.4, 166.5],\n/trajectory/g/1/path/2/type : \"path\",\n/trajectory/g/1/path/2/id : \"path/2\",\n/trajectory/g/1/path/2/fill : \"none\",\n/trajectory/g/1/path/2/stroke : \"#000000\",\n/trajectory/g/1/path/2/stroke-width : 0.5,\n/trajectory/g/1/path/2/stroke-miterlimit : 10.,\n/trajectory/g/1/path/2/stroke-dasharray : 0.9853,\n/trajectory/g/1/path/2/d/0/M : [100.5, 165.5],\n/trajectory/g/1/path/2/d/1/c : [100.8, 159.9, 102.7, 140.6, 115.6, 148.],\n/trajectory/g/1/path/3/type : \"path\",\n/trajectory/g/1/path/3/id : \"path/3\",\n/trajectory/g/1/path/3/fill : \"none\",\n/trajectory/g/1/path/3/stroke : \"#000000\",\n/trajectory/g/1/path/3/stroke-width : 0.5,\n/trajectory/g/1/path/3/stroke-miterlimit : 10.,\n/trajectory/g/1/path/3/d/0/M : [116., 148.2],\n/trajectory/g/1/path/3/d/1/c : [116.1, 148.3, 116.3, 148.4, 116.4, 148.5],\n/time/type : \"line\",\n/time/id : \"time\",\n/time/fill : \"none\",\n/time/stroke : \"#000000\",\n/time/stroke-width : 0.5,\n/time/stroke-miterlimit : 10.,\n/time/stroke-dasharray : 1.,\n/time/x1 : 93.2,\n/time/y1 : 173.9,\n/time/x2 : 93.2,\n/time/y2 : 196.",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 84.0, 17.0, 50.0, 22.0 ],
					"style" : "",
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 47.0, 61.0, 125.0, 22.0 ],
					"style" : "",
					"text" : "o.svg @separator _-"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.svg.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.flatten.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
 ],
		"embedsnapshot" : 0
	}

}

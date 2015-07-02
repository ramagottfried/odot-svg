{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 0,
			"revision" : 4,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 247.0, 45.0, 817.0, 807.0 ],
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
		"toolbars_unpinned_last_save" : 15,
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
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 659.0, 217.0, 125.0, 20.0 ],
					"presentation_rect" : [ 211.0, 228.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "- rama gottfried, 2015"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 188.0, 102.0, 601.0, 100.0 ],
					"presentation_rect" : [ 221.0, 129.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "attributes:\n@autowatch 1/0 : if set to 1, o.svg will automatically re-load and output the SVG data if the file changes (i.e. is resaved to disk)\n@separator <character list> : uses the value of characters as separators in the resulting address. For example with a separator of \"-\", if in Illustrator the name of an object or group is \"stave-1\", the resulting OSC address for this object will be \"/stave/1\". Note: SVG requires that all id attributes are unique, so if two objects have the same name in Illustrator, the program will create unique ids in the SVG file, usually with the \"_\" character."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 188.0, 44.0, 601.0, 47.0 ],
					"style" : "",
					"text" : "o.svg reads, parses, and transcodes an SVG file into an OSC bundle, separating SVG path data into individual drawing commands. Note that for simplicity of interpretation in Max, all bezier curves are cubic, and in absolute coordinates."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 707.0, 8.0, 70.0, 33.0 ],
					"style" : "",
					"text" : "o.svg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 42.0, 159.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"linecount" : 64,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 42.0, 245.0, 563.0, 890.0 ],
					"text" : "/file : \"/Volumes/Macintosh HD/Users/r/Documents/dev-lib/svg/tenor-presentation/curve-ex.svg\",\n/Layer_1 : {\n\t/type : \"svg\",\n\t/id : \"Layer_1\",\n\t/version : 1.1,\n\t/x : 0.,\n\t/y : 0.,\n\t/width : 792.,\n\t/height : 612.,\n\t/viewBox : 0.,\n\t/enable-background : \"new 0 0 792 612\",\n\t/space : \"preserve\",\n\t/path/1 : {\n\t\t/type : \"path\",\n\t\t/id : \"path/1\",\n\t\t/fill : \"#FFFFFF\",\n\t\t/stroke : \"#000000\",\n\t\t/stroke-miterlimit : 10.,\n\t\t/d : {\n\t\t\t/0 : {\n\t\t\t\t/type : \"M\",\n\t\t\t\t/points : [156.1, 137.8],\n\t\t\t\t/length : 0.\n\t\t\t},\n\t\t\t/1 : {\n\t\t\t\t/type : \"c\",\n\t\t\t\t/points : [156.1, 137.8, 156.1, 137.8, 234.3, 160.5, 248.5, 142.8],\n\t\t\t\t/length : 95.2466\n\t\t\t},\n\t\t\t/2 : {\n\t\t\t\t/type : \"c\",\n\t\t\t\t/points : [248.5, 142.8, 262.7, 125.1, 286.3, 131.9, 286.3, 131.9],\n\t\t\t\t/length : 41.5839\n\t\t\t},\n\t\t\t/3 : {\n\t\t\t\t/type : \"L\",\n\t\t\t\t/points : [286.3, 131.9, 306.5, 183.2],\n\t\t\t\t/length : 55.1337\n\t\t\t},\n\t\t\t/4 : {\n\t\t\t\t/type : \"c\",\n\t\t\t\t/points : [306.5, 183.2, 302.3, 185.7, 267.8, 203.4, 270.4, 188.2],\n\t\t\t\t/length : 42.6131\n\t\t\t},\n\t\t\t/5 : {\n\t\t\t\t/type : \"c\",\n\t\t\t\t/points : [270.4, 188.2, 272.9, 173.1, 285.5, 182.3, 285.5, 182.3],\n\t\t\t\t/length : 20.8301\n\t\t\t},\n\t\t\t/6 : {\n\t\t\t\t/type : \"s\",\n\t\t\t\t/points : [285.5, 182.3, 285.5, 182.3, 172.9, 230.4, 156.1, 194.2],\n\t\t\t\t/length : 137.891\n\t\t\t},\n\t\t\t/7 : {\n\t\t\t\t/type : \"c\",\n\t\t\t\t/points : [156.1, 194.2, 138.5, 156.2, 201.5, 159.6, 201.5, 159.6],\n\t\t\t\t/length : 71.7271\n\t\t\t},\n\t\t\t/totallength : 465.025\n\t\t}\n\t}\n}",
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
					"patching_rect" : [ 79.0, 160.0, 37.0, 22.0 ],
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
					"patching_rect" : [ 42.0, 204.0, 119.0, 22.0 ],
					"style" : "",
					"text" : "o.svg @separator -"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
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
 ],
		"dependency_cache" : [ 			{
				"name" : "o.svg.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
 ],
		"embedsnapshot" : 0
	}

}

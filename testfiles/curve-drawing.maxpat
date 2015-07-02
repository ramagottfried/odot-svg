{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 0,
			"revision" : 3,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 183.0, 79.0, 830.0, 783.0 ],
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
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 73.0, 380.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "o.route /d"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"linecount" : 16,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 747.0, 39.0, 611.0, 236.0 ],
					"presentation_rect" : [ 547.0, 241.0, 0.0, 0.0 ],
					"text" : "/count = 0,\nmap(\n  lambda(a,\n    if( length(value(a)) == 2,\n      progn( \n        assign(\"/start/x\", value(a)[[0]]), \n        assign(\"/start/y\", value(a)[[1]])\n      ),\n      progn(\n        assign(\"/b/\" + /count + \"/x\", value(a)[[aseq(0, length(value(a))-1, 2)]]),\n        assign(\"/b/\" + /count + \"/y\", value(a)[[aseq(1, length(value(a))-1, 2)]]),\n        /count++ \n      )\n    )\n  ), /path/steps\n)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 104.0, 132.0, 214.0, 32.0 ],
					"text" : "/path/steps = getaddresses()",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-10",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 73.0, 37.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 7,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 62.0, 493.0, 842.0, 114.0 ],
					"text" : "if( length(/b/x == 4),\n  progn(\n    /tm1 = /t - 1,\n    /bezier/x = /tm1*/tm1*/tm1*/b/x[[0]] + 3*/tm1*/tm1*/t*/b/x[[1]] + 3*/tm1*/t*/t*/b/x[[2]] + /t*/t*/t*/b/x[[3]],\n    /bezier/y = /tm1*/tm1*/tm1*/b/y[[0]] + 3*/tm1*/tm1*/t*/b/y[[1]] + 3*/tm1*/t*/t*/b/y[[2]] + /t*/t*/t*/b/y[[3]]\n  )\n)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-7",
					"linecount" : 5,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 623.0, 469.0, 78.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 47, 48, 0, 0, 44, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 64, 101, 57, -103, -103, -103, -103, -102, 64, 104, -128, 0, 0, 0, 0, 0, 64, 101, 12, -52, -52, -52, -52, -51, 64, 104, -112, 0, 0, 0, 0, 0, 64, 100, -45, 51, 51, 51, 51, 51, 64, 104, -84, -52, -52, -52, -52, -51, 64, 100, -80, 0, 0, 0, 0, 0, 64, 104, -52, -52, -52, -52, -52, -51, -80, 118, -15, -65, 0, 0, 0, 48, 47, 49, 0, 0, 44, 100, 100, 100, 100, 0, 0, 0, 64, 100, -80, 0, 0, 0, 0, 0, 64, 104, -52, -52, -52, -52, -52, -51, 64, 100, -52, -52, -52, -52, -52, -51, 64, 104, -128, 0, 0, 0, 0, 0, -56, -50, -108, -124, 0, 0, 0, 48, 47, 50, 0, 0, 44, 100, 100, 100, 100, 0, 0, 0, 64, 100, -52, -52, -52, -52, -52, -51, 64, 104, -128, 0, 0, 0, 0, 0, 64, 100, -52, -52, -52, -52, -52, -51, 64, 104, 99, 51, 51, 51, 51, 51, -56, -50, -108, -124, 0, 0, 0, 84, 47, 51, 0, 0, 44, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 64, 100, -52, -52, -52, -52, -52, -51, 64, 104, 99, 51, 51, 51, 51, 51, 64, 100, -45, 51, 51, 51, 51, 51, 64, 104, 83, 51, 51, 51, 51, 51, 64, 101, 12, -52, -52, -52, -52, -51, 64, 104, 112, 0, 0, 0, 0, 0, 64, 101, 57, -103, -103, -103, -103, -102, 64, 104, -128, 0, 0, 0, 0, 0, -80, 118, -15, -65, 0, 0, 0, 48, 47, 52, 0, 0, 44, 100, 100, 100, 100, 0, 0, 0, 64, 101, 57, -103, -103, -103, -103, -102, 64, 104, -128, 0, 0, 0, 0, 0, 64, 101, 57, -103, -103, -103, -103, -102, 64, 104, -128, 0, 0, 0, 0, 0, -56, -50, -108, -124 ],
					"saved_bundle_length" : 348,
					"text" : "/0 : [169.8, 196., 168.4, 196.5, 166.6, 197.4, 165.5, 198.4],\n/1 : [165.5, 198.4, 166.4, 196.],\n/2 : [166.4, 196., 166.4, 195.1],\n/3 : [166.4, 195.1, 166.6, 194.6, 168.4, 195.5, 169.8, 196.],\n/4 : [169.8, 196., 169.8, 196.]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-6",
					"linecount" : 9,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 73.0, 220.0, 626.0, 141.0 ],
					"text" : "/count = 0,\nmap(\n  lambda(a,\n    if( length(value(a)) == 2, assign(\"/start/x\", value(a)),\n        assign(\"/d/\" + /count++, value(a)\n      )\n    )\n  ), /path/steps\n)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 73.0, 73.0, 56.0, 22.0 ],
					"style" : "",
					"text" : "o.pack /t"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 73.0, 179.0, 50.0, 22.0 ],
					"style" : "",
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-1",
					"linecount" : 6,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 276.0, 24.0, 477.0, 92.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 48, 47, 77, 0, 0, 0, 0, 44, 100, 100, 0, 64, 101, 57, -103, -103, -103, -103, -102, 64, 104, -128, 0, 0, 0, 0, 0, 0, 0, 0, 84, 47, 49, 47, 67, 0, 0, 0, 0, 44, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 64, 101, 57, -103, -103, -103, -103, -102, 64, 104, -128, 0, 0, 0, 0, 0, 64, 101, 12, -52, -52, -52, -52, -51, 64, 104, -112, 0, 0, 0, 0, 0, 64, 100, -45, 51, 51, 51, 51, 51, 64, 104, -84, -52, -52, -52, -52, -51, 64, 100, -80, 0, 0, 0, 0, 0, 64, 104, -52, -52, -52, -52, -52, -51, 0, 0, 0, 48, 47, 50, 47, 76, 0, 0, 0, 0, 44, 100, 100, 100, 100, 0, 0, 0, 64, 100, -80, 0, 0, 0, 0, 0, 64, 104, -52, -52, -52, -52, -52, -51, 64, 100, -52, -52, -52, -52, -52, -51, 64, 104, -128, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 51, 47, 76, 0, 0, 0, 0, 44, 100, 100, 100, 100, 0, 0, 0, 64, 100, -52, -52, -52, -52, -52, -51, 64, 104, -128, 0, 0, 0, 0, 0, 64, 100, -52, -52, -52, -52, -52, -51, 64, 104, 99, 51, 51, 51, 51, 51, 0, 0, 0, 84, 47, 52, 47, 67, 0, 0, 0, 0, 44, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 64, 100, -52, -52, -52, -52, -52, -51, 64, 104, 99, 51, 51, 51, 51, 51, 64, 100, -45, 51, 51, 51, 51, 51, 64, 104, 83, 51, 51, 51, 51, 51, 64, 101, 12, -52, -52, -52, -52, -51, 64, 104, 112, 0, 0, 0, 0, 0, 64, 101, 57, -103, -103, -103, -103, -102, 64, 104, -128, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 53, 47, 90, 0, 0, 0, 0, 44, 100, 100, 100, 100, 0, 0, 0, 64, 101, 57, -103, -103, -103, -103, -102, 64, 104, -128, 0, 0, 0, 0, 0, 64, 101, 57, -103, -103, -103, -103, -102, 64, 104, -128, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 380,
					"text" : "/0/M : [169.8, 196.],\n/1/C : [169.8, 196., 168.4, 196.5, 166.6, 197.4, 165.5, 198.4],\n/2/L : [165.5, 198.4, 166.4, 196.],\n/3/L : [166.4, 196., 166.4, 195.1],\n/4/C : [166.4, 195.1, 166.6, 194.6, 168.4, 195.5, 169.8, 196.],\n/5/Z : [169.8, 196., 169.8, 196.]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
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

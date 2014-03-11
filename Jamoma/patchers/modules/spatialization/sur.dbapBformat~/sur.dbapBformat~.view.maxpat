{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 6,
      "minor": 0,
      "revision": 4
    },
    "rect": [
      130.0,
      183.0,
      1150.0,
      551.0
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 0,
    "gridsize": [
      5.0,
      5.0
    ],
    "gridsnaponopen": 0,
    "statusbarvisible": 2,
    "toolbarvisible": 1,
    "boxanimatetime": 200,
    "imprint": 0,
    "enablehscroll": 1,
    "enablevscroll": 1,
    "devicewidth": 0.0,
    "description": "",
    "digest": "",
    "tags": "",
    "boxes": [
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-21",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            530.0,
            230.0,
            427.0,
            19.0
          ],
          "text": "As each source is a 4-channel signal, we can have a maximum of 32:4=8 sources."
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            225.0,
            315.0,
            237.0,
            19.0
          ],
          "text": "(n x 4 channels of Ambisonics WXYZ signals)"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-5",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            275.0,
            110.0,
            34.0,
            17.0
          ],
          "text": "/info"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-20",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            470.0,
            393.0,
            601.0,
            31.0
          ],
          "text": "j.remote 8"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-45",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            470.0,
            360.0,
            578.0,
            31.0
          ],
          "text": "j.remote 8"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-7",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            470.0,
            325.0,
            577.0,
            31.0
          ],
          "text": "j.remote 8"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-14",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            470.0,
            290.0,
            592.0,
            31.0
          ],
          "text": "j.remote 8"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-16",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            470.0,
            435.0,
            150.0,
            19.0
          ],
          "text": "Speakers:"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-37",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            470.0,
            230.0,
            54.0,
            19.0
          ],
          "text": "Source:"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-18",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            470.0,
            460.0,
            602.0,
            31.0
          ],
          "text": "j.remote 32"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-19",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            470.0,
            255.0,
            589.0,
            31.0
          ],
          "text": "j.remote 8"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-6",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            465.0,
            20.0,
            150.0,
            19.0
          ],
          "text": "Global settings:"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "frozen_object_attributes": {
            "description": "Get info on current positions of sources and speakers",
            "type": "none",
            "name": "info"
          },
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            556.0,
            20.0,
            105.0,
            19.0
          ],
          "text": "j.remote info"
        }
      },
      {
        "box": {
          "annotation": "Rolloff in dB with doubling of distance.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-17",
          "maxclass": "flonum",
          "minimum": 1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            468.0,
            77.0,
            40.0,
            19.0
          ],
          "presentation": 1,
          "presentation_rect": [
            245.0,
            45.0,
            40.0,
            19.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-15",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            528.0,
            77.0,
            592.0,
            31.0
          ],
          "text": "j.remote rolloff",
          "varname": "voices[3]"
        }
      },
      {
        "box": {
          "annotation": "The number of speakers to diffuse to.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-10",
          "maxclass": "number",
          "maximum": 32,
          "minimum": 1,
          "mouseup": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            468.0,
            119.0,
            40.0,
            19.0
          ],
          "presentation": 1,
          "presentation_rect": [
            120.0,
            45.0,
            40.0,
            19.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-11",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            528.0,
            119.0,
            605.0,
            31.0
          ],
          "text": "j.remote numSpeakers",
          "varname": "voices[1]"
        }
      },
      {
        "box": {
          "annotation": "The number of sources to process.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-9",
          "maxclass": "number",
          "maximum": 32,
          "minimum": 1,
          "mouseup": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            468.0,
            188.0,
            40.0,
            19.0
          ],
          "presentation": 1,
          "presentation_rect": [
            120.0,
            25.0,
            40.0,
            19.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-8",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            70.0,
            110.0,
            196.0,
            17.0
          ],
          "text": "/preset/store 1 default, /preset/write"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            120.0,
            210.0,
            54.0,
            19.0
          ],
          "text": "j.in"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            255.0,
            425.0,
            206.0,
            19.0
          ],
          "text": "----multicable signal output----"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-3",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            40.0,
            85.0,
            160.0,
            17.0
          ],
          "text": "/documentation/generate"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-22",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            170.0,
            45.0,
            72.0,
            19.0
          ],
          "presentation": 1,
          "presentation_rect": [
            170.0,
            45.0,
            72.0,
            19.0
          ],
          "text": "Rolloff (dB):"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-24",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            5.0,
            45.0,
            116.0,
            19.0
          ],
          "presentation": 1,
          "presentation_rect": [
            5.0,
            45.0,
            116.0,
            19.0
          ],
          "text": "Number of speakers:"
        }
      },
      {
        "box": {
          "comment": "Channel 1",
          "id": "obj-25",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            225.0,
            425.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "comment": "W - omni",
          "id": "obj-26",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            225.0,
            350.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-27",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            225.0,
            295.0,
            207.0,
            19.0
          ],
          "text": "----multicable signal input----"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            "audio.connect"
          ],
          "patching_rect": [
            120.0,
            390.0,
            124.0,
            19.0
          ],
          "text": "jalg.sur.dbap_bformat~"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-34",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            5.0,
            150.0,
            279.0,
            31.0
          ],
          "text": "j.model @description \"Distance-based amplitude panning of incomming B-format signals.\"",
          "varname": "j.model"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-36",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            5.0,
            105.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-40",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            5.0,
            25.0,
            110.0,
            19.0
          ],
          "presentation": 1,
          "presentation_rect": [
            5.0,
            25.0,
            110.0,
            19.0
          ],
          "text": "Number of sources:"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-42",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            5.0,
            245.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-44",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            528.0,
            188.0,
            605.0,
            31.0
          ],
          "text": "j.remote numSources",
          "varname": "voices"
        }
      },
      {
        "box": {
          "has_gain": 1,
          "has_mute": 1,
          "id": "obj-46",
          "maxclass": "j.ui",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "prefix": "audio",
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            300.0,
            70.0
          ],
          "text": "/editing_this_module"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "obj-31",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-11",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-10",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-17",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-15",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-31",
            1
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-26",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-34",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            49.5,
            138.5,
            14.5,
            138.5
          ],
          "source": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-31",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-42",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-34",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-34",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-36",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-9",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-44",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-34",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            284.5,
            138.0,
            14.5,
            138.0
          ],
          "source": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-34",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            79.5,
            138.0,
            14.5,
            138.0
          ],
          "source": [
            "obj-8",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-9",
            0
          ]
        }
      }
    ],
    "dependency_cache": [
      {
        "name": "jalg.sur.dbap_bformat~.maxpat",
        "bootpath": "/Users/nilspeters/Documents/gits/Jamoma/Modules/Modular/Max/modules/spatialization/sur.dbap_bformat~",
        "patcherrelativepath": "",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "j.thru.maxpat",
        "bootpath": "/Users/nilspeters/Documents/gits/Jamoma/Modules/Modular/Max/library/components/thru",
        "patcherrelativepath": "../../../library/components/thru",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "j.message.array.maxpat",
        "bootpath": "/Users/nilspeters/Documents/gits/Jamoma/Modules/Modular/Max/library/components/message.array",
        "patcherrelativepath": "../../../library/components/message.array",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "j.message.array.instance.maxpat",
        "bootpath": "/Users/nilspeters/Documents/gits/Jamoma/Modules/Modular/Max/library/components/message.array",
        "patcherrelativepath": "../../../library/components/message.array",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "j.parameter.array.maxpat",
        "bootpath": "/Users/nilspeters/Documents/gits/Jamoma/Modules/Modular/Max/library/components/parameter.array",
        "patcherrelativepath": "../../../library/components/parameter.array",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "j.parameter.array.instance.maxpat",
        "bootpath": "/Users/nilspeters/Documents/gits/Jamoma/Modules/Modular/Max/library/components/parameter.array",
        "patcherrelativepath": "../../../library/components/parameter.array",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "j.ui.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.parameter.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.model.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.mixer=.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.dbap_bformat.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.oscinstance.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.pass.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.oscroute.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.dataspace.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.in.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.message.mxo",
        "type": "iLaX"
      }
    ]
  }
}
import re

let colors = {  
    # Default colors
    "[default]":            "39",
    "[bDefault]":           "49",

    # Foreground colors
    "[black]":              "30",
    "[red]":                "31",
    "[green]":              "32",
    "[yellow]":             "33",
    "[blue]":               "34",
    "[magenta]":            "35",
    "[cyan]":               "36",
    "[white]":              "37",
    "[darkGray]":           "90",
    "[lightRed]":           "91",
    "[lightGreen]":         "92",
    "[lightYellow]":        "93",
    "[lightBlue]":          "94",
    "[lightMagenta]":       "95",
    "[lightCyan]":          "96",
    "[lightWhite]":         "97",

    # Background colors
    "[bBlack]":             "40",
    "[bRed]":               "41",
    "[bGreen]":             "42",
    "[bYellow]":            "43",
    "[bBlue]":              "44",
    "[bMagenta]":           "45",
    "[bCyan]":              "46",
    "[bWhite]":             "47",
    "[bDarkGray]":          "100",
    "[bLightRed]":          "101",
    "[bLightGreen]":        "102",
    "[bLightYellow]":       "103",
    "[bLightBlue]":         "104",
    "[bLightMagenta]":      "105",
    "[bLightCyan]":         "106",
    "[bLightWhite]":        "107",
    }

proc colorString*(base: string): string =
    #[
    Doing r"string" makes string what Nim calls "raw string",
    so that "\[" doesn't recognize as metacharactor in regexp engine
    ]# 
    var matches: seq[string] = base.findAll(re("\\[([a-zA-Z]+)\\]"))
    
    var baseCopy = base
    for match in matches:
        for color in colors:
            if match == color[0]:
                baseCopy = baseCopy.replace(re("\\[" & match[1..len(match)-2] & "\\]", ), "\e[" & color[1] & "m")
    return baseCopy & "\e[0m"

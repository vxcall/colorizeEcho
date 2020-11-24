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
    "[bgBlack]":             "40",
    "[bgRed]":               "41",
    "[bgGreen]":             "42",
    "[bgYellow]":            "43",
    "[bgBlue]":              "44",
    "[bgMagenta]":           "45",
    "[bgCyan]":              "46",
    "[bgWhite]":             "47",
    "[bgDarkGray]":          "100",
    "[bgLightRed]":          "101",
    "[bgLightGreen]":        "102",
    "[bgLightYellow]":       "103",
    "[bgLightBlue]":         "104",
    "[bgLightMagenta]":      "105",
    "[bgLightCyan]":         "106",
    "[bgLightWhite]":        "107",
    }

proc colorizeEcho*(base: string): string {.discardable.} =
    var matches: seq[string] = base.findAll(re("\\[([a-zA-Z]+)\\]"))
    
    var isBold: int = 0
    var baseCopy = base
    
    for match in matches:
        for color in colors:
            if match == "[bold]":
                isBold = 1
                baseCopy = baseCopy.replace(re("\\[bold\\]"), "")
            elif match == "[regular]":
                baseCopy = baseCopy.replace(re("\\[regular\\]"), "")
                isBold = 0
            if match == color[0]:
                baseCopy = baseCopy.replace(re("\\[" & match[1..len(match)-2] & "\\]"), "\e[" & $isBold & ";" & color[1] & "m")
    echo baseCopy & "\e[0m"
import strutils
import winlean

let colors = {  
    # Default colors
    "default":            "39",
    "bgDefault":           "49",

    # Foreground colors
    "black":              "30",
    "red":                "31",
    "green":              "32",
    "yellow":             "33",
    "blue":               "34",
    "magenta":            "35",
    "cyan":               "36",
    "white":              "37",
    "darkGray":           "90",
    "lightRed":           "91",
    "lightGreen":         "92",
    "lightYellow":        "93",
    "lightBlue":          "94",
    "lightMagenta":       "95",
    "lightCyan":          "96",
    "lightWhite":         "97",

    # Background colors
    "bgBlack":             "40",
    "bgRed":               "41",
    "bgGreen":             "42",
    "bgYellow":            "43",
    "bgBlue":              "44",
    "bgMagenta":           "45",
    "bgCyan":              "46",
    "bgWhite":             "47",
    "bgDarkGray":          "100",
    "bgLightRed":          "101",
    "bgLightGreen":        "102",
    "bgLightYellow":       "103",
    "bgLightBlue":         "104",
    "bgLightMagenta":      "105",
    "bgLightCyan":         "106",
    "bgLightWhite":        "107",
    }

proc cecho*(base: string): string {.discardable.} =
    ##cecho (stands forcolorizeEcho) prints out whatever message with your preffered color.
    runnableExamples:
        cecho "[magenta]Every [green]color [cyan]is [default]beautiful."
        cecho "[black][bgMagenta]Backgraund [bgGreen]color [bgLightRed]is [bgCyan]changable [bgYellow]too."
        cecho "[lightYellow][bold]THICC TEXT [regular]REGULAR TEXT"
    var res: string
    var currentColor = "39"
    var currentBackground = "49"

    var splstr = base.split("[")

    for str in splstr:
        if str.startsWith("bold"):
            res &= "\e[1;" & currentColor & ";" & currentBackground & "m" & str[len("bold")+1..len(str)-1]
        if str.startsWith("regular"):
            res &= "\e[0;" & currentColor & ";" & currentBackground & "m" & str[len("regular")+1..len(str)-1]
        else:
            for color in colors:
                if str.startsWith(color[0]):
                    if color[0].startsWith("bg") == false: # If str doesn't start with bg which means it's foreground specifier
                        currentColor = color[1]
                    elif color[0].startsWith("bg") == true: # If str starts with bg which means it's background specifier
                        currentBackground = color[1]
                    res &= "\e[" & color[1] & "m" & str[len(color[0])+1..len(str)-1]
    echo res & "\e[m"

proc setConsoleMode(hConsoleOutput: int, mode: int): int {.stdcall, discardable, dynlib: "kernel32", importc: "SetConsoleMode".}

proc initColorizeEcho*() {.discardable.} =
    const ENABLE_PROCESSED_OUTPUT = 0x0001
    const ENABLE_WRAP_AT_EOL_OUTPUT = 0x0002
    const ENABLE_VIRTUAL_TERMINAL_PROCESSING = 0x0004
    const MODE = ENABLE_PROCESSED_OUTPUT + ENABLE_WRAP_AT_EOL_OUTPUT + ENABLE_VIRTUAL_TERMINAL_PROCESSING
    
    var handle = getStdHandle(-11)
    setConsoleMode(handle, MODE)
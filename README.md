# :thought_balloon: colorizeEcho
colorizeEcho is a package which simply colorize echo message on Windows command prompt.

It makes your debug message more clear and beautiful. 
Moreover, it gives your debugging life more comfortable. :kissing_heart:


# :fire: Usage

To change foreground color or background color of output message, **put color name surrounded by square bracket at right before the text you'd like to change color**.

e.g. for foreground = `[red]`, `[cyan]`

e.g. for background =` [bRed]`, `[bCyan]`

```nim
import colorizeEcho/src/colorizeEcho

colorizeEcho "[magenta]Every [green]color [cyan]is [default]beautiful."

colorizeEcho "[black][bgMagenta]Backgraund [bgGreen]color [bgLightRed]is [bgCyan]changable [bgYellow]too."

colorizeEcho "[lightYellow][bold]THICC TEXT [regular]REGULAR TEXT"
```

result ↓

![result](https://user-images.githubusercontent.com/33578715/100107482-a43e6980-2ea4-11eb-89d5-3cdb4d2282c8.png)

# :balloon: Available colors

| foreground | background | weight |
| ---------- | ---------- | ------ |
| `[default]` | `[bgDefault]` | `[regular]` |
| `[black]`  | `[bgBlack]` | `[bold]` |
| `[red]` | `[bgRed]` |
| `[green]` | `[bgGreen]` |
| `[yellow]` | `[bgYellow]` |
| `[blue]` | `[bgBlue]` |
| `[magenta]` | `[bgMagenta]` |
| `[cyan]` | `[bgCyan]` |
| `[white]` | `[bgWhite]` |
| `[darkGray]` | `[bgDarkGray]` |
| `[lightRed]` | `[bgLightRed]` |
| `[lightGreen]` | `[bgLightGreen]` |
| `[lightYellow]` | `[bgLightYellow]` |
| `[lightBlue]` | `[bgLightBlue]` |
| `[lightMagenta]` | `[bgLightMagenta]` |
| `[lightCyan]` | `[bgLightCyan]` |
| `[lightWhite]` | `[bgLightWhite]` |

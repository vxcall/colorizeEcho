# :thought_balloon: colorizeEcho
colorizeEcho is a package which simply colorize echo message on Windows command prompt.

It makes your debug message more clear and beautiful. 
Moreover, it gives your debugging life more comfortable. :kissing_heart:


# :fire: Usage

To change foreground color or background color of output message, **put color name surrounded by square bracket at right before the text you'd like to change color**.

e.g. for foreground = `[red]`, `[cyan]`

e.g. for background =` [bRed]`, `[bCyan]`

```nim
import colorizeEcho/colorizeEcho

colorizeEcho "[magenta]Every [green]color [cyan]is [default]beautiful."
colorizeEcho "[black][bMagenta]Backgraund [bGreen]color [bLightRed]is [bCyan]changable [bYellow]too."
```

result ↓

![result](https://user-images.githubusercontent.com/33578715/100054593-4d617180-2e5d-11eb-945e-d7d628fac8a9.png)

# :balloon: Available colors

| foreground | background |
| ---------- | ---------- |
| `[default]` | `[bDefault]` |
| `[black]`  | `[bBlack]` |
| `[red]` | `[bRed]` |
| `[green]` | `[bGreen]` |
| `[yellow]` | `[bYellow]` |
| `[blue]` | `[bBlue]` |
| `[magenta]` | `[bMagenta]` |
| `[cyan]` | `[bCyan]` |
| `[white]` | `[bWhite]` |
| `[darkGray]` | `[bDarkGray]` |
| `[lightRed]` | `[bLightRed]` |
| `[lightGreen]` | `[bLightGreen]` |
| `[lightYellow]` | `[bLightYellow]` |
| `[lightBlue]` | `[bLightBlue]` |
| `[lightMagenta]` | `[bLightMagenta]` |
| `[lightCyan]` | `[bLightCyan]` |
| `[lightWhite]` | `[bLightWhite]` |

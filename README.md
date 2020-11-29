# :thought_balloon: colorizeEcho
colorizeEcho is a super fast, and lightweight library that simply colorize echo message on Windows command prompt.

Also note that this is a Nim integration for [mitchellh/colorstring](https://github.com/mitchellh/colorstring).

It makes your debug message more clear and beautiful. 
Moreover, it gives your debugging life more comfortable and full of happiness. :kissing_heart:

<<<<<<< HEAD
# Installation

Run following command on your command prompt and you're good to go

```shell
$ nimble install colorizeEcho
```

=======
>>>>>>> main
# :fire: Usage

To change foreground color or background color of output message, **put color name surrounded by square bracket at right before the text you'd like to change color**.

e.g. for foreground = `[red]`, `[cyan]`

e.g. for background =` [bRed]`, `[bCyan]`

To change font weight, **put `[bold]` or `[regular]` at right before the text**

```nim
import colorizeEcho

colorizeEcho "[magenta]Every [green]color [cyan]is [default]beautiful."

colorizeEcho "[black][bgMagenta]Background [bgGreen]color [bgLightRed]is [bgCyan]changable [bgYellow]too."

colorizeEcho "[lightYellow][bold]THICC TEXT [regular]REGULAR TEXT"
```

result ↓

![result](https://user-images.githubusercontent.com/33578715/100331937-bab30500-300b-11eb-91aa-09ecca0436df.png)

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

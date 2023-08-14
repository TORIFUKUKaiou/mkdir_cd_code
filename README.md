# MkdirCdCode

This project is a CLI application.  

After creating a directory with mkdir, open the newly created directory in a newly launched terminal and open it in Visual Studio Code.  

Operation has been confirmed only on macOS Ventura 13.5.  

See below for how to enable the code command.  

[Launching from the command line](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line)

## Installation

```bash
mix escript.install github TORIFUKUKaiou/mkdir_cd_code
```

You can also run `mkdir_cd_code` from the terminal by typing 'mkdir_cd_code' after adding it to the path.  
You can find out where it was installed with the `mix escript` command.  

You should add `mkcdcode()` function to `~/.zshrc`.


```:~/.zshrc
mkcdcode() {
    cd $($HOME/path/to/mkdir_cd_code $1)
}
```

## Usage

```bash
mkcdcode awesome
```

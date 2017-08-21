# xresources2minttyrc
convert .Xresources colorschemes to minttyrc colorschemes

usage:

    xresources2minttyrc.sh .Xresources >> ~/.minttyrc
    
as a test don't output to file but just watch what it outputs and if that makes sense(no errors or colors not being found). make sure you dont have colors already set in ~/.minttyrc, you can open it afterwords to check if this is the case


it's assumed you have them in a normal format, this means no outcommented colors or things along those lines, other stuff in the .Xresources file shouldn't matter as its ignored. a good site to get these compatible formatted .Xresources files is [terminal.sexy](https://terminal.sexy)

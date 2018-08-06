## Ghostscript
http://www.ghostscript.com/download/gsdnld.html

Download the source. (See Building It below. You missed that last time.)

## Building it
```
LDFLAGS="-L/usr/lib" ./configure
sudo make so
```


Combine secured PDFs using GhostScript

There are a lot of posts about how to combine PDFs using PDFTK, but I had problems when the PDFs were secured. GhostScript (gs) powers right through.

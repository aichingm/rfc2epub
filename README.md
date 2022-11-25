rfc2epub - create an epub ebook from an IETF RFC
=================================================

## Usage

 `rfc2epub [-flags [parameter]] <number of the rfc>`
 *Checkout the EXAMPLES (with:* `rfc2epub -e`*)*



## Flags  

-e             Show usage examples
-h, --help     Print this message
-o, --output   Set the output filename. The default is "RFC <number>.epub".
-f             Replace the vendors font with M+ M1 (a very narrow monospaced font
                by the M+ FONTS PROJECT)
-d             Do not package the book to epub but create the file
                and directory structure with all its contents
-t, --toc      Create a table of contents
-c, --cover    Create a cover


-F, --weight   Set the font weight. Requires -f.
                Allowed values:
                  thin, light, regular, medium
-L, --spacing  Set the letter-spacing (use positive or negative values - example 3)
-S, --split    Set the text which splits the text and the page number in the
                table of contents
-s, --size     Set the output font size, in em (default 1)
-b, --break    Preserve page breaks from the original file

--preset       Use preset combination known to work well on certain readers. If you
                want to override specific fields of this, specify --preset first,
                followed by any other options.
                Allowed values:
                  paperwhite


## Examples

1. `rfc2epub -o 2549.epub 2549`
   Creates an ebook of the rfc 2549 and names it 2549.epub

2. `rfc2epub -f --weight light -o 2549.epub 2549`
   Use the M+ 1M font in "light" weight.

3. `rfc2epub --preset paperwhite 2549`
   Creates an ebook of RFC 2549 using best settings for a Kindle Paperwhite and names it
    RFC 2549.epub


## Install & Run

### Dependencies  

* php
* php-tidy (optional)
* tidy (optional)

### Just Run

1. Download the zip
2. Extract it 
3. Open a terminal
4. Navigate to the directory which contains the script 
5. run `php rfc2epub`

### Install on Linux 

```bash
git clone https://github.com/aichingm/rfc2epub
mv rfc2epub/rfc2epub.php rfc2epub/rfc2epub
chmod +x rfc2epub/rfc2epub
echo "PATH=$(pwd)/rfc2epub:\$PATH" >> ~/.bashrc

# run it everywhere with
rfc2epub 
```


## Run in Docker Image

### Build image

1. Clone the repository
2. Run the build, e.g., `docker build . --tag rfc2epub`

### Execute script

```bash
mkdir output
docker run -it -v ./output:/output --rm rfc2epub 6749 /output/6749.epub
```

### Special Thanks

Special Thanks to M+ FONTS PROJECT for publishing their fonts under a Free License ♥



## License

rfc2epub - create an epub ebook from an IETF RFC
Copyright (C) 2017  Mario Aichinger

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.








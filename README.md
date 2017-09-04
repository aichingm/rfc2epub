rfc2epub - create an epub ebook from an IETF RFC
=================================================

## Usage

 `rfc2epub [-flags [parameter]] <number of the rfc> <output book name>`
 *Checkout the EXAMPLES (with:* `rfc2epub -e`*)*



## Flags  

-e    show usage examples  
-h    print this message  
-f    replace the vendors font with M+ M1 (a very narrow monospaced font by the M+ FONTS PROJECT) 
-d    do not package the book to epub but create the file and directory structure with all its contents  
-t    create a table of contents  


-F    M+ M1 comes in thin, light, regular and medium (see example 2)  
-L    set the letter-spacing (use positive or negative values - example 3)  
-S    set the text which splits the text and the page number in the  
      table of contents  



## Examples

1. `rfc2epub 2549 2549.epub`
  Creates an ebook of the rfc 2549 and names it 2549.epub 

2. `rfc2epub -fF light 2549 2549.epub`
  The `f` flag replaces the vendors font with the M+ 1M font.
  The patameter for `F` will be set to light.

3. `rfc2epub -fFL regular -1 2549 2549.epub`
  The `f` flag replaces the vendors font with the M+ 1M font.
  The patameter for `F` will be set to regular.
  The parameter for `L` will be set to -1 to narrow the letters. This is
  useful if 80 characters per line do not fit on your epub readers screen.



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
git clone https://github.com/aichigm/rfc2epub
mv rfc2epub/rfc2epub.php rfc2epub/rfc2epub
chmod +x rfc2epub/rfc2epub
echo "PATH=$(pwd)/rfc2epub:\$PATH" >> ~/.bashrc

# run it everywhere with
rfc2epub 
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








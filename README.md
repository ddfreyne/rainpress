# Rainpress

Rainpress is a compressor for CSS, written in Ruby. It removes unnecessary characters and replaces some attributes with a shorter equivalent name.

## Usage

```ruby
require 'rainpress'
compressed_style_text = Rainpress.compress(style_text)
```

Options:

* `:comments` — if set to false, comments will not be removed
* `:newlines` — if set to false, newlines will not be removed
* `:spaces` — if set to false, spaces will not be removed
* `:colors` — if set to false, colors will not be modified
* `:misc` — if set to false, miscellaneous compression parts will be skipped

## License

Copyright (c) 2007-2008 Uwe L. Korn
Copyright (c) 2017 Denis Defreyne

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

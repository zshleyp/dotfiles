Operators for adding/changing/deleting pairs of block delimiters.

## Usage


- NORMAL mode:

    _`[count]`_ `ys` _`DELIMITER [count] textobject|motion`_  
    _`[count]`_ `cs` _`DELIMITER1 DELIMITER2`_  
    _`[count]`_ `ds` _`DELIMITER`_

- VISUAL/VISUAL-LINE mode:

    `S` _`DELIMITER`_  
    `C` _`DELIMITER1 DELIMITER2`_  
    `D` _`DELIMITER`_

In VISUAL-LINE mode, `S`/`D` will also add/remove newlines around the delimiters:


```
              text
text          {               text
line|VSB  =>  line|VaBDB  =>  line|
text          }               text
              text
```

In VISUAL-LINE mode, `C`/`D` will remove the old delimiters even if they are not alone on the line:

```
if (true) {         if (true)
    text|VaBDB  =>      text
} else {            else {|
```

## Dependencies

Optional - [vis-pairs](https://repo.or.cz/vis-pairs.git) is used if installed.
The delimiters of any textobjects available there will be usable here via the same key mapping.

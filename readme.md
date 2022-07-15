# To do
* Create ~/.gdbinit with
```
cat ~/.gdbinit
python
import sys
sys.path.insert(0, '/usr/share/gcc-4.8.5/python')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end
```
`/usr/share/gcc-4.8.5/python` change according to your version of gcc

* auto detect version of gcc -> path gdbinit
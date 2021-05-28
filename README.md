# p4est-demo

Execute the following commands to download & build p4est, compile the
demonstration code, and run it:
```shell
./install_p4est.sh # On Windows: ./install_p4est_windows.sh
make
# Only required on Windows: export PATH="$PATH:$(pwd)/p4est/bin"
./demo
```

If everything works as expected, you should get the following output:
```
Into p4est_new with min quadrants 0 level 0 uniform 1
New p4est with 1 trees on 1 processors
Initial level 0 potential global quadrants 1 per tree 1
Done p4est_new with 1 total quadrants
Into p4est_save testfile
Done p4est_save
```

The SHA256 hash of the resulting `testfile` is 
`8116291ef942e26d00c68d0485a01d44e5a2ad73814fe1785f8a320c3bda1197`.

When compiling under Windows using mingw64 via MSYS2, instead we get the following output:

```
Into p4est_new with min quadrants 0 level 0 uniform 1
New p4est with 1 trees on 1 processors
Initial level 0 potential global quadrants 1 per tree 1
Done p4est_new with 1 total quadrants
Into p4est_save testfile
Abort: first file tell
Abort: src/p4est.c:3527
Abort
```

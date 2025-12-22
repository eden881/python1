# python1

This is my sloppy attempt at running Python 1 on a modern Linux system, compiled to 64 bit.  
Just for fun - don't actually use this for anything serious!

Docker helps a lot in the process because the required build environment and libraries are so old.  
It probably won't build natively on your system without heavy modifications.

## Build and run

In the project's directory:

```bash
docker build -t python1 .

# Or pull a pre-built image:
docker pull eden881/python1:1.6.1
```

Then run it with:

```bash
docker run --rm -it python1

# Or if you pulled the image:
docker run --rm -it eden881/python1:1.6.1
```

You can check whether it's 32 or 64 bit like this:

```python
import sys
print sys.maxint
```

`sys.maxint` was [removed](https://docs.python.org/3/whatsnew/3.0.html#integers) in Python 3, but in Python 1 it can be used to check the bitness:

- `2147483647` means 32 bit
- `9223372036854775807` means 64 bit

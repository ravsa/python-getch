from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

ext = Extension('getch',
                sources=['package/getch.pyx'],
                )

setup(ext_modules=[ext],
      cmdclass={'build_ext': build_ext},
      )

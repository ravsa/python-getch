from distutils.core import setup
from distutils.extension import Extension

ext = Extension('getch',
                sources=['build/lib.linux-i686-2.7/getch.so'],
                )

setup(name='getch',
      description='keypress event related functions getch(),pause(),kbhit()',
      author='Ravindra Singh Ratnawat',
      author_email='rvsbana@gmail.com',
      url='https://github.com/ravsa',
      ext_modules=[ext],
      )

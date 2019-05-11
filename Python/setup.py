from distutils.core import setup
from Cython.Build import cythonize

setup(name='Greedy',
      ext_modules=cythonize("greedyCythonLib.pyx"))

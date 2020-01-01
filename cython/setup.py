from distutils.core import setup, Extension
from Cython.Build import cythonize

ext = Extension("fibonacci", ["main.pyx"])
setup(name="fibonacci", ext_modules=cythonize([ext]))
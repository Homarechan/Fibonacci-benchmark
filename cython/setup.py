from distutils.core import setup, Extension
from Cython.Build import cythonize
from Cython.Distutils import build_ext

setup(
        cmdclass= {"build_ext": build_ext},
        ext_modules=[Extension("fibonacci", ["./main.pyx"])]
        )


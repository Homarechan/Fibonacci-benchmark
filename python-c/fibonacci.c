#include <python3.7m/Python.h>

int fibonacci(int n) {
    if (n == 1 || n == 2) {
        return 1;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

PyObject *fibonacci_fibonacci(PyObject *self, PyObject *args) {
    int arg, ans;
    if (!PyArg_ParseTuple(args, "i", &arg)) {
        return NULL;
    }
    ans = fibonacci(arg);
    return Py_BuildValue("i", ans);
}

static PyMethodDef fibonacci_methods[] = {
  {"fibonacci", fibonacci_fibonacci, METH_VARARGS, NULL},
  {NULL, NULL, 0, NULL},
};

static PyModuleDef fibonacci_module = {
  PyModuleDef_HEAD_INIT,
  "fibonacci",
  NULL,
  -1,
  fibonacci_methods,
};

PyMODINIT_FUNC PyInit_fibonacci(void) {
    return PyModule_Create(&fibonacci_module);
}

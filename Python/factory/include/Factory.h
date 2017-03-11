#ifndef FACTORY_H_
#define FACTORY_H_
#include <iostream>
#include <memory>
#include <pybind11/pybind11.h>

class Foo
{
  public :
    Foo();
  private :
    static int m_instances;
};



class Factory
{
    public :
      Factory(){}
      static std::unique_ptr<Foo> createFoo() ;
};



namespace py = pybind11;

PYBIND11_PLUGIN(factory) {
    py::module m("factory", "pybind11 example plugin");

    py::class_<Foo>(m, "Foo")
        .def(py::init<>());

    py::class_<Factory>(m,"Factory")
        .def(py::init<>())
        .def_static("createFoo",&Factory::createFoo);

    return m.ptr();
}


#endif
